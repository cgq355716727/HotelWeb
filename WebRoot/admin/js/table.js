var JSON;
function sendRequest(jumpPage,param,method){
			
	var url="order.action?method="+method+"&jumpPage="+jumpPage+"&random="+Math.random();
			
	$(".info").remove();
	$.getJSON(url,param,function(json){
	JSON=json;
		
	//创建表格
	for(var i=0;i<json.rows.length;i++){
				
		$("#tt").append("<tbody class='info' id='tbody"+i+"'></tbody>");
		$("#tbody"+i).append("<tr id='tr"+i+"'></tr>");
		$("#rows").children("th").each(function(){											
				var item=this.field;
				if(item=="state"){
					if(json.rows[i][item]==1){
						$("#tr"+i).append("<td class='state'>预定</td>");
					}else if(json.rows[i][item]==2){
						$("#tr"+i).append("<td class='state'>入住</td>");
					}else if(json.rows[i][item]==3){
						$("#tr"+i).append("<td class='state'>已退房</td>");
					}
				}else if(item=="operation"){
					$("#tr"+i).append("<td><input class='orderId' type='hidden' value='"+json.rows[i].order_Id+"' />" +
							"<input type='button' class='checkIn' value='入住' />"+
							"<button class='renew' value='续订'>续订</button>" +
							"<button class='checkOutButton' value='退房'>退房</button></td>");
				}else if(item=="Room_Type_name"){
					$("#tr"+i).append("<td id='roomType'>"+json.rows[i][item]+"</td>");
				}else if(item=="room_no"){
					$("#tr"+i).append("<td id='roomNo'>"+json.rows[i][item]+"</td>");
				}else if(item=="check_out"){
					$("#tr"+i).append("<td id='checkOut'>"+json.rows[i][item]+"</td>");
				}else if(item=="deposit"){
					$("#tr"+i).append("<td id='deposit'>"+json.rows[i][item]+"</td>");
				}else if(item=="cost"){
					$("#tr"+i).append("<td id='cost'>"+json.rows[i][item]+"</td>");
				}else{
					$("#tr"+i).append("<td>"+json.rows[i][item]+"</td>");	
				}				
			});
			//添加支付的DIV
			date=new Date();
			date1=json.rows[i].check_in;
			date2=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
			var money=Math.round(roomPrice(json.rows[i].Room_Type_name)*json.rows[i].guest_type/10*dateDiff(date1,date2));
			$("#tbody"+i).append("<tr style='display:none' class='checkOut'>" +
					"<td>房间价格：</td><td>"+roomPrice(json.rows[i].Room_Type_name)+
					"</td><td>折扣："+json.rows[i].guest_type+
					"</td><td>入住天数："+dateDiff(date1,date2)+
					"</td><td>总费用：</td><td class='money'>" +money+
					"</td><td><input class='orderId' type='hidden' value='"+json.rows[i].order_Id+"' />" +
							"<input class='payRent' type='button' value='支付' />"+
					"</td><td><input class='reset' type='button' value='取消' />"+
					"</td></tr>");
		}
		page(json);
		$(".reset").click(reset);
		$(".payRent").click(payRent);
		$("#tt").click(alterTable);
		$(".checkIn").click(checkIn);
		$(".renew").click(renew);
		$(".checkOutButton").click(checkOut);
	});		
}

function reset(){
	$(this).parent().parent().fadeOut();
}

function roomPrice(roomTypeName){
	for(var i=0;i<JSON.roomTypes.length;i++){
		if(JSON.roomTypes[i].roomTypename==roomTypeName){
			return JSON.roomTypes[i].roomPrice;
		}
	}
}

function dateDiff(sDate1,sDate2){
	var aDate,oDate1,oDate2,iDays;
	aDate=sDate1.split("-");
	oDate1=new Date(aDate[1]+"-"+aDate[2]+"-"+aDate[0]);
	aDate=sDate2.split("-");
	oDate2=new Date(aDate[1]+"-"+aDate[2]+"-"+aDate[0]);
	iDays=parseInt(Math.abs(oDate1-oDate2)/1000/60/60/24);
	return iDays;
}

function page(json){
			
	$("#maxCount").text("共有 "+json.page.maxCount+" 项");
	$("#curPage").text(" 当前为第"+json.page.curPage+"页 ");
	$("#curPage").val(json.page.curPage);
	$("#rowsPerPage").text(" 每页有 "+json.page.rowsPrePage+"行");	
	$("#maxPage").text("共有 "+json.page.maxPage+"页");
	$("#maxPage").val(json.page.maxPage);
}

function createRoomType(e,defaultName){
		
	$(e).append("<select  class='roomTypename' name='roomTypename'></select>");
	$(e).children(".roomTypename").change(createRoom);
	for(var i=0;i<JSON.roomTypes.length;i++){
		
		if(JSON.roomTypes[i].roomTypename==defaultName){
			$(e).children(".roomTypename").append("<option selected='selected' value='"+JSON.roomTypes[i].roomTypename+"'>"+JSON.roomTypes[i].roomTypename+"</option>");
		}else{
			$(e).children(".roomTypename").append("<option value='"+JSON.roomTypes[i].roomTypename+"'>"+JSON.roomTypes[i].roomTypename+"</option>");
		}
	}
}

function createRoom(){
	var roomTypeName=$(this).val();
	var e=$(this).parent().siblings("#roomNo")[0];
	var defaultName=e.innerHTML;
	//alert($(this).parent().siblings("#roomNo")[0].innerHTML);
	e.innerHTML="";
	$(e).append("<select class='roomNo' name='roomNo'></select>");
	var roomTypeName=JSON[roomTypeName];
	for(var i=0;i<roomTypeName.length;i++){
		
		if(roomTypeName[i]==defaultName){
			$(e).children(".roomNo").append("<option selected='selected' value='"+roomTypeName[i]+"'>"+roomTypeName[i]+"</option>");
		}else{
			$(e).children(".roomNo").append("<option value='"+roomTypeName[i]+"'>"+roomTypeName[i]+"</option>");
		}
	}
	
}

function alterTable(){
	var e=event.srcElement;
	if(e.tagName=="TD"){
	    var id=$(e).attr("id");   
	 	if(id=="roomType"){	
	 		if($(e).siblings()[7].innerHTML!="预定"){
	 			return;
	 		}
	 		var defaultName=e.innerHTML;
	 		e.innerHTML="";
	 		createRoomType(e,defaultName);
	 	}else if(id=="checkOut"){
	 		if($(e).siblings()[7].innerHTML=="已退房"){
	 			return;
	 		}
	 		if($(e).children().length>0){
	 			var defaultValue=$(e).children().val();			 	
	 		}else{
	 			var defaultValue=e.innerHTML;
	 		}
	 		e.innerHTML="";
	 		createDate(e,defaultValue);
	 	}else if(id=="deposit"){
	 		if($(e).children().length>0){
	 			var value=$(e).children().val();
			 	e.innerHTML="<input size='3' name='deposit'  value='"+value+"' />";
	 		}else{
			 	var value=e.innerHTML;
			 	e.innerHTML="<input size='3' name='deposit'  value='"+value+"' />";
	 		}
	 	}
 	}         	
}

function createDate(e,defaultValue){
	$(e).append("<input size='6' type='text' id='to' name='checkIn' value='"+defaultValue+"'/>");
	$( "#to" ).datepicker({
		defaultDate: "+1w",
		changeMonth: true,
		numberOfMonths: 2,
		onClose: function( selectedDate ) {
			$( "#to" ).datepicker( "option",{dateFormat: 'yy-mm-dd'},  selectedDate );
		}
	});	
}

function checkIn(){

	var e=event.srcElement;
	var param={};
	param.orderId=$(e).siblings(".orderId")[0].value;
	var tds=$(e).parent().siblings();
	if(tds[8].innerHTML!="预定"){
		alert("只有预定状态才能入住");
		return;
	}
	if(tds[0].children.length!=0){
		param.roomTypeName=tds[0].children[0].value;
		tds[0].innerHTML=param.roomTypeName;
		param.roomTypeName=encodeURI(param.roomTypeName);
	}
	if(tds[1].children.length!=0){
		param.roomNo=tds[1].children[0].value;
		tds[1].innerHTML=param.roomNo;
	}
	if(tds[5].children.length!=0){
		param.checkOut=tds[5].children[0].value;
		tds[5].innerHTML=param.checkOut;
	}
	var url="order.action?method=checkIn";
	$.get(url,param,function(data){
		alert(data);
		location.reload();
	});
	
}
function renew(){
	
	var e=event.srcElement;
	var param={};
	param.orderId=$(e).siblings(".orderId")[0].value;
	var tds=$(e).parent().siblings();
	if(tds[8].innerHTML!="入住"){
		alert("只有入住状态才能续订");
		return;
	}
	if(tds[5].children.length!=0){
		param.checkOut=tds[5].children[0].value;
		tds[5].innerHTML=param.checkOut;
		var url="order.action?method=renew";
		$.get(url,param,function(data){
			alert(data);
			//location.reload();
		});
	}else{
		alert("请修改离开时间");
	}

}
function checkOut(){
	
	var e=event.srcElement;
	var tds=$(e).parent().siblings();
	if(tds[8].innerHTML!="入住"){
		alert("只有入住状态才能退房");
		return;
	}
	$(this).parent().parent().siblings(".checkOut").fadeIn();
	//$(".checkOut").fadeIn();
}

function payRent(){
	
	if(confirm("确定支付吗？")){
		var money=$(this).parent().siblings(".money").html();
		var param={};
		param.cost=money;
		var date=new Date();
		oDate=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
		param.checkOut=oDate;
		param.orderId=$(this).siblings(".orderId").val();
		var url="order.action?method=checkOut";
		$.get(url,param,function(data){
			alert(data);
			location.reload();
		});
	}
	
}
		
