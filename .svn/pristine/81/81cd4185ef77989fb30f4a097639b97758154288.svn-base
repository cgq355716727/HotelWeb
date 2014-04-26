//************通用函数************//
function $F(fctId){
	return document.getElementById(fctId);
}

//取得某对象，若提供ID下的对象不存在则自动创建
function c$(fctId,fctClassName){
	var varTempDivObj=$F(fctId);
	if(!varTempDivObj){
		GetPyzyIframe("ifm"+fctId);
		varTempDivObj=document.createElement("div");
		varTempDivObj.id=fctId;
		if(fctClassName && fctClassName!="")varTempDivObj.className=fctClassName;
		document.body.appendChild(varTempDivObj);
	}
	return varTempDivObj;
}

//取得某ID的iframe对象，若不存在该ID的对象则自动创建
function GetPyzyIframe(fctIfmId,fctVisibility,fctTop,fctLeft,fctWidth,fctHeight){
	var varTempIfmObj=$F(fctIfmId);
	if(!varTempIfmObj){
		varTempIfmObj=document.createElement("iframe");
		varTempIfmObj.id=fctIfmId;
		varTempIfmObj.style.position="absolute";
		varTempIfmObj.style.zIndex="1";
		varTempIfmObj.style.display="none";
		document.body.appendChild(varTempIfmObj);
	}
	if(fctVisibility=="hidden") fctVisibility="none";
	if(fctVisibility=="visible") fctVisibility="";
	if(fctTop)varTempIfmObj.style.top=fctTop+"px";
	if(fctLeft)varTempIfmObj.style.left=fctLeft+"px";
	if(fctWidth)varTempIfmObj.style.width=fctWidth+"px";
	if(fctHeight)varTempIfmObj.style.height=fctHeight+"px";
	if(fctVisibility)varTempIfmObj.style.display=(document.all?fctVisibility:"none");
	if($("#divAddressMenu").css("display")=='block')
	{
		hideselect('c123_');
	}else{
		showselect('c123_');
	}
	return varTempIfmObj;
}

//取得某对象的坐标位置、宽、高
function getPosition(obj){
	var top=0;
	var left=0;
	var width=obj.offsetWidth;
	var height=obj.offsetHeight;
	while(obj.offsetParent){
		top+=obj.offsetTop;
		left+=obj.offsetLeft;
		obj=obj.offsetParent;
	}
	return{"top":top,"left":left,"width":width,"height":height};
}

//取得编码存储框对象
function GetValueToInputObj(fctThisObj){
	if(!fctThisObj)return null;
	var varThisObjAutoInput=(fctThisObj.getAttributeNode("value_to_input")?fctThisObj.getAttributeNode("value_to_input").value:"");
	if(varThisObjAutoInput=="")return null;
	return $F(varThisObjAutoInput);
}

//自动触发下一个对象的Act事件
function AutoNextInputAct(fctThisObj,fctAct){
	var varNextInput=fctThisObj.getAttributeNode("nextinput");
	if(varNextInput && varNextInput!=""){
		if(document.all){
			eval("$F('"+varNextInput.value+"')."+fctAct+"()");
		}else{
			var evt = document.createEvent("MouseEvents");
			evt.initEvent(fctAct,true,true);
			$F(varNextInput.value).dispatchEvent(evt);
		}
		$F(varNextInput.value).focus();
	}
}

//给某对象的某事件增加处理函数AddFunToObj(document,"onclick","alert('1');")
function AddFunToObj(fctObj,fctAct,fctFunction){
	if(fctObj.addEventListener){ //!IE
		fctObj.addEventListener(fctAct.replace("on",""),function(e){
			e.cancelBubble=!eval(fctFunction);
		},false);
	}else if(fctObj.attachEvent){ //IE
		fctObj.attachEvent(fctAct,function(){
			return eval(fctFunction);
		});
	}
}
document.write('\
	<style type="text/css">\
		#divAddressMenu {position:absolute;dispaly:none;z-index:10000;overflow:hidden;width:156px;background-color:#faf7e7;border:solid #666 1px;font-size:12px;}\
		#divAddressMenu h4{text-align:left;border-bottom:solid #666 1px;color:#999999;font-size:12px;line-height:20px; font-weight:100; padding:2px 3px; margin:0;color:#70bd20;}\
		#divAddressMenu div{padding:3px 0;}\
		#divAddressMenu a {display:block;width:156px!important;width:100%;padding:1px 2px 2px 2px;cursor:default;text-decoration:none;color:#333;border:solid #ffffff 1px;background-color:none;text-align:left;}\
		#divAddressMenu a span{float:right;}\
		#divAddressMenu a:hover {background-color:#eee5b4;color:#990000;}\
		#divAddressMenu p{margin:3px; padding:0;font-size:12px;line-height:20px;}\
	</style>\
');
var varPageId=0;
var currPageCityNums=0;	
//生成并显示出城市下拉菜单
function GetCityList(fctThisObj,thekeycode){
	var varMenuObj=c$("divAddressMenu");
	var varThisObj=fctThisObj;
//	var event = event ? event : (window.event ? window.event : null); //ff下有问题     
//  if (event.keyCode==13) {alert("回车")};    
//	alert(event.keyCode);
	
	if(varThisObj.id=="menuPageS"||varThisObj.id=="menuPageE" || thekeycode==40 ||thekeycode==38){
		varThisObj=varMenuObj.obj;
	}else{
		varPageId=0;
	}
	if(thekeycode==13) return false;
	//清除已选城市Value
	var varThisObjAutoInput=GetValueToInputObj(varThisObj); //取得城市编码值存储对象
	if(varThisObjAutoInput)varThisObjAutoInput.value="";
	//取得城市数据并拆解为数组
	var varObjValue=varThisObj.value;
	var varThisObjAdd=(varThisObj.getAttributeNode("mod_address_suggest")?varThisObj.getAttributeNode("mod_address_suggest").value:"");
	var varData=(varObjValue==""?(varThisObjAdd==""?varAddress:varThisObjAdd):varAddress);
//	alert(varAddress);
	var varHtmlStr="",varCityDataSplit=varData.split("@"),varCityDataSplitI,varCityDataSplitIu,varNextPageStr="";
	//存储当前操作对象
	varMenuObj.obj=varThisObj;
	var varPageRCount=(varThisObj.getAttributeNode("pagecount")?parseInt(varThisObj.getAttributeNode("pagecount").value,10):8);
	var varThisPageI=0
//	alert((varPageId+1)*varPageRCount);
	for(var i=1;i<varCityDataSplit.length-1;i++){
		varCityDataSplitI=varCityDataSplit[i];
		varCityDataSplitISplit=varCityDataSplitI.split("|");		
		if((varCityDataSplitISplit[0].toUpperCase().indexOf(varObjValue.toUpperCase())==0 || varCityDataSplitISplit[1].toUpperCase().indexOf(varObjValue.toUpperCase())==0 ||varCityDataSplitISplit[2].toUpperCase().indexOf(varObjValue.toUpperCase())==0)  || varObjValue=="" || i==varObjValue){ // || varCityDataSplitI.toLowerCase().indexOf(varObjValue.toLowerCase())>=0
//		if(varCityDataSplitI.toUpperCase().indexOf(varObjValue.toUpperCase())>=0 || varObjValue=="" || i==varObjValue){ // || varCityDataSplitI.toLowerCase().indexOf(varObjValue.toLowerCase())>=0
			varThisPageI+=1;
//			alert(varCityDataSplitI);
			if(varThisPageI>varPageId*varPageRCount && varThisPageI<=(varPageId+1)*varPageRCount){
				varCityDataSplitISplit=varCityDataSplitI.split("|");
				varHtmlStr+="<a href='javascript:;' onclick='WriteCity("+varThisPageI+")' id='menuA"+varThisPageI+"' title='"+ varCityDataSplitI.replace("'","") +"'><span id='menuA"+varThisPageI+"'9'>"+varCityDataSplitISplit[1]+"&nbsp;&nbsp;</span>"+varCityDataSplitISplit[0]+"</a>";//("+varCityDataSplitISplit[2]+")
			}
			
		}
	}
//	alert(varThisPageI);//当页数量
	currPageCityNums = varThisPageI;
	if(varThisPageI>varPageRCount){
		varNextPageStr="<P>&nbsp;<b id=menuPageS style="+(varPageId>0?"cursor:pointer;":"color:#666666;")+">&lt;&lt;上一页　</b>"
		varNextPageStr+="<b id=menuPageE style="+(varThisPageI>(varPageId+1)*varPageRCount?"cursor:pointer;":"color:#666666;")+">下一页&gt;&gt;</b></p>";
	}
	var varThisObjPosition=getPosition(varThisObj); //取得事件发生处控件坐标
	with(varMenuObj){
		style.top=varThisObjPosition.top+varThisObjPosition.height+"px";
		style.left=varThisObjPosition.left+"px";
		style.display="";
		innerHTML="<div><h4>可输城市拼音/汉字。</h4>"+(varHtmlStr==""?"<nobr>没有找到您查的信息‘"+varObjValue+"’。</nobr>":varHtmlStr+varNextPageStr)+"</div>";
	}
	GetPyzyIframe("ifm"+varMenuObj.id,"visible",(varThisObjPosition.top+varThisObjPosition.height),varThisObjPosition.left,varMenuObj.offsetWidth,varMenuObj.offsetHeight); //取Iframe
//	$("#zone").css('display','none');
	var _version = $.browser.version;
//	if ( _version == 6.0 ) 	
//		$("#zoneDs").css('display','none');
//	hideselect('c123_');	
	varThisObj.focus();
	hideselect('c123_');	

	return false;
}
//选择某城市
function WriteCity(fctI){
	var varMenuObj=c$("divAddressMenu");
	var varThisObj=varMenuObj.obj;
	
	var varMenuValue=$F("menuA"+fctI).title;
	varMenuValue=varMenuValue.split("|");
//	alert(fctI +','+varMenuValue);
//	alert(varThisObj.id + varMenuValue[1]);
	varThisObj.value = varMenuValue[1];
//	alert(varThisObj.value);
}
//隐藏城市列表
function _Hidden(e){
	e=e?e:event;	
	var varMenuObj=c$("divAddressMenu");
	var varThisObj=varMenuObj.obj;
//	alert(e.keyCode);
	if(varMenuObj.style.display!="none"){
		if(e){
			var EventOBJ=(e.srcElement?e.srcElement:e.target);
			if(typeof(EventOBJ)!= "undefined"){
			if(EventOBJ.id=="menuPageS" && EventOBJ.style.color==""){ //如果点的是“上一页”则向上翻页
				varPageId=varPageId-1;
				GetCityList(EventOBJ);
			}

			if(EventOBJ.id=="menuPageE" && EventOBJ.style.color==""){ //如果点的是“下一页”则向下翻页
				varPageId=varPageId+1;
//				alert(varPageId);
				GetCityList(EventOBJ);
			}
			
//			alert(EventOBJ.id);
			if((e.keyCode!==13) && (varThisObj==EventOBJ || EventOBJ.id.indexOf("menuPage")==0 || EventOBJ.id.indexOf("divAddressMenu")==0)) return false;
			}
		}		

		var varThisObjAutoInput=GetValueToInputObj(varThisObj); //取得城市编码值存储对象
		if($F("menuA1")){ //如果下拉菜单中存在第一个城市
			if(!varThisObjAutoInput)varThisObjAutoInput=varThisObj;
			if(varThisObjAutoInput.value=="" || varThisObjAutoInput==varThisObj){ //编码框中无值
				//WriteCity("1");
			}
		}else if(typeof(EventOBJ)!= "undefined" && EventOBJ.id.indexOf("menuA")<0){ //如果下拉菜单中不存在满足条件的城市
//			if(varThisObj)varThisObj.value="";
		}
		varMenuObj.style.display="none";
		GetPyzyIframe("ifm"+varMenuObj.id,"hidden");
//		$("#zone").css('display','');
//		$("#zoneDs").css('display','');
		var _version = $.browser.version;
//		if ( _version == 6.0 ) 	
//			$("#zoneDs").css('display','');
		
//		alert('hid');
	}
}
document.write('\
	<style type="text/css">\
		.DateListBox{float:left;border:solid #FC7A7D 1px;width:147px !important;width:142px;height:168px !important;height:186px;font-size:12px;text-align:center;}\
		.DateListBox h1{width:100%;background-color:#FFF4F4;color:#B42929;font-size:12px;height:20px;font-weight:bold;line-height:20px;vertical-align:middle;margin:0px;}\
		.DateListBox div{float:left;border:solid #EB696C 1px;background-color:#EB696C;color:#FFFFFF;width:19px !important;width:17px;height:20px;font-size:12px;font-weight:bold;line-height:20px;vertical-align:middle;}\
		.DateListBox a{float:left;color:#990000;border:solid #ffffff 1px;background-color:#ffffff;width:19px !important;width:17px;height:19px !important;height:22px;font-size:12px;line-height:20px;vertical-align:middle;}\
		.DateListBox a:hover{border:solid #F2C2BD 1px;background-color:#FBEDEC;}\
		.DateListBox .aSelect{cursor:pointer;border:solid #DEB4B4 1px;background-color:#FAE0CF;color:#FF0000;}\
		.PyzyDateBox{position:absolute;z-index:10000;dispaly:none;background-color:#FFFFFF;border:solid #EBcccC 1px;height:170px;width:298px !important;width:290px;}\
	</style>\
');

//取得日历列表，该函数输出的内容需要根据需求放置到特定的容器中，如浮动层、固定DIV…
function GetMonthHTML(fctStaDate,fctDate){
	if(!fctDate)fctDate=new Date(); //默认为当前日期
	var varYear=fctDate.getFullYear();
	var varMonth=fctDate.getMonth();
	var varNextMonth=new Date(varYear,varMonth+1,1);
	var varThisMonthButDay = new Date(varNextMonth-86400000); //本月最后一天

	var varThisDate,varThisWeekDay,varThisMonthHTML="";
	varThisMonthHTML+="<h1>"+varYear+"年"+(varMonth+1)+"月</h1>"
	varThisMonthHTML+="<div>日</div><div>一</div><div>二</div><div>三</div><div>四</div><div>五</div><div>六</div>"
	for(var DayI=1;DayI<=varThisMonthButDay.getDate();DayI++){
		varThisDate=new Date(varYear,varMonth,DayI);
		varThisWeekDay=varThisDate.getDay();
		if(DayI==1){
			for(var spcI=0;spcI<varThisWeekDay;spcI++){
				varThisMonthHTML+="<a></a>"
			}
		}
		varThisMonthHTML+="<a "+((fctStaDate && fctStaDate!="")?(varThisDate<fctStaDate?"old":""):"")+" href=javascript:; onclick='SelectDate(this)' title='"+varYear+"-"+(varMonth+1)+"-"+DayI+"'>"+DayI+"</a>";
	}
	return '<div class="DateListBox">'+varThisMonthHTML+'</div>';
}
//选择日期
function SelectDate(fctAObj){
	if(fctAObj.href||fctAObj.className=="aSelect"){
		var varValueObj=$F("divPyzyDateBox").Obj;
		var varValueToObj=GetValueToInputObj(varValueObj);
		if(varValueToObj)varValueObj=varValueToObj;
		if(varValueObj.value==fctAObj.title){
			varValueObj.value="";
		}else{
			varValueObj.value=fctAObj.title;
		}
		$F("divPyzyDateBox").style.display="none";
		$F("divPyzyDateBox").bodyclick="";
		GetPyzyIframe("ifmdivPyzyDateBox","hidden");
		//AutoNextInputAct($F("divPyzyDateBox").Obj,"click");
	}
}
//隐藏日历
function HiddenDateBox(){
	if($F("divPyzyDateBox")){
		if($F("divPyzyDateBox").style.display!="none" && $F("divPyzyDateBox").bodyclick=="1"){
			$F("divPyzyDateBox").style.display="none";
			$F("divPyzyDateBox").bodyclick="";
			GetPyzyIframe("ifmdivPyzyDateBox","hidden");
		}else{
			$F("divPyzyDateBox").bodyclick="1";
		}
	}
}
//显示日历
function ShowTwoMonthList(fctThisObj,fctJNum,fctStaDate){
	if(!fctJNum)fctJNum=0;
	if(!fctThisObj)fctThisObj="";
	var varStaDate=null,varTheDate=new Date();
	if(fctStaDate||fctStaDate==""){
		varStaDate=new Date(new Date()-86400000); //如果没有定义具体可使用的开始时间则自定义为今天
		var varStaDateSplit=fctStaDate.split("-");
		if(varStaDateSplit.length==3){
			varStaDate=new Date(varStaDateSplit[0],parseInt(varStaDateSplit[1],10)-1,varStaDateSplit[2]);//fctStaDate=new Date();
		}
		varTheDate=varStaDate;
		if(fctStaDate=="")fctStaDate=varStaDate.getFullYear()+"-"+(varStaDate.getMonth()+1)+"-"+varStaDate.getDate();
	}
	var varShowTwoMonthHTML="";
	for(var i=0+fctJNum;i<2+fctJNum;i++){
		varShowTwoMonthHTML+=GetMonthHTML((varStaDate?varStaDate:""),new Date(varTheDate.getFullYear(),varTheDate.getMonth()+i,1));
	}
	if(varStaDate)varShowTwoMonthHTML=varShowTwoMonthHTML.replace(/old href/g,"style=color:#999 old");
	if(fctThisObj.value!=""){ //对已选日期样式进行改变
		if(/^((\d{4})|(\d{2}))-(\d{1,2})-(\d{1,2})$F/g.test(fctThisObj.value))varShowTwoMonthHTML=varShowTwoMonthHTML.replace(fctThisObj.value,fctThisObj.value+"' class='aSelect");
	}
	var varDateBoxObj = c$("divPyzyDateBox","PyzyDateBox");
	varDateBoxObj.bodyclick="";
	if(fctThisObj!=""){ //调整坐标到合适位置
		var varThisObjPosition=getPosition(fctThisObj);
		varDateBoxObj.style.top=(varThisObjPosition.top+varThisObjPosition.height)+"px";
		varDateBoxObj.style.left=varThisObjPosition.left+"px";
		varDateBoxObj.style.display=""; //hidden
		varDateBoxObj.Obj=fctThisObj;
	}
	varDateBoxObj.innerHTML=varShowTwoMonthHTML+'<div style="margin-top:'+(document.all?'-180':'-1')+'px;color:#B42929;font-size:12px;font-weight:bold;line-height:8px;">&nbsp;<span style="padding-right:'+(document.all?'220':'232')+'px;cursor:pointer;" onclick="ShowTwoMonthList(null,'+(fctJNum-1)+(fctStaDate?',\''+fctStaDate+'\'':'')+')" title="上月"><<</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="cursor:pointer;" onclick="ShowTwoMonthList(null,'+(fctJNum+1)+(fctStaDate?',\''+fctStaDate+'\'':'')+')" title="下月">>></span></div>';
	GetPyzyIframe("ifmdivPyzyDateBox","visible",(varThisObjPosition.top+varThisObjPosition.height),varThisObjPosition.left,varDateBoxObj.offsetWidth,varDateBoxObj.offsetHeight);//取Iframe
}
AddFunToObj(window,"onload","AddFunToObj(document,'onclick','_Hidden("+(document.all?"":"e")+");HiddenDateBox();');");
function hideselect(per)
{
	var _version = $.browser.version;
	if ( _version == 6.0 ) {
		$("select",document).each(function(){
			if($(this).attr('name'))
			{
//				alert($(this).attr('name'));
				if($(this).attr('name').substring(0,5)==per)
				{
					name = $(this).attr('name').substring(5);
					$(this).attr('name',name);
					$(this).css('display','');
				}
				if($(this).css('display')!='none')
				{
					name = per+$(this).attr('name');
					$(this).attr('name',name);
				}
				$(this).css('display','none');
			}
		});
	}
}
function showselect(per)
{
	var _version = $.browser.version;
	if ( _version == 6.0 ) {
		$("select",document).each(function(){
			if($(this).attr('name'))
			{
				if($(this).attr('name').substring(0,5)==per)
				{
					name = $(this).attr('name').substring(5);
					$(this).attr('name',name);
					$(this).css('display','');
				}
			}
		});
	}
}
var gotoIndex=0;
var currentLine=-1;

function OnInputKeyUP(event){
	var event = event ? event : (window.event ? window.event : null);     
//    if (event.keyCode==13) {alert("回车")};    
//    if (e.ctrlKey && e.keyCode==13) {alert("ctrl + enter")}
//    var currentCol=-1;
//	alert('page:'+varPageId);
	if(event.keyCode!=38 && event.keyCode!=40 ) {
		currentLine=-1;
		gotoIndex=0;
	}
	var tpagecount=0; //页数
	var currpage= varPageId;
	var pagesize=8 ;
	var minIndex=-1;
	var maxlen = currpage*pagesize+8 ;
	var lastpageNum = currPageCityNums%8 ;
	var currpageBegin =0;
	var currPageEnd = 0 ;
//	if(lastpageNum<8) 
	maxlen = currPageCityNums;// currpage*pagesize + currPageCityNums;
	tpagecount = Math.floor ((maxlen+ pagesize -1) /pagesize);
	currpageBegin = tpagecount>1? currpage*pagesize:0;	
	currPageEnd =  pagesize*(currpage+1)-1
	if(currPageEnd>maxlen-1){
		currPageEnd = currpage*pagesize + lastpageNum -1;
	} 
//	currPageEnd =  currpage*pagesize + ( lastpageNum==0?8:lastpageNum) -1;
//	alert(currPageEnd);
	GetCityList(document.getElementById("city"),event.keyCode);
	var zoneObj = document.getElementById("zone");
	if(zoneObj!=null)DelZone('zone');
	DelZone('zone2');
//	var varMenuObj=c$("divAddressMenu");
//	varThisObj=varMenuObj.obj;
//	varThisObj.focus();
//	alert('currpage:'+currpage);	
//	alert(event.keyCode);
    switch(event.keyCode)  
    {
//		case 37: //左键
//		            currentCol--;
//		            if   (currentLine   <   1)
//		        	{
//		        	        currentLine   =   maxlen;
//		        	}		            
//		            changeItem(currentLine);
//		            break;
		case 38: //向上键
	
					currentLine--;
					gotoIndex = currentLine;
					if(varPageId>0){
						minIndex =  pagesize*varPageId-1;
						gotoIndex = currentLine + currpage*pagesize;
					}
					else minIndex = -1;
				    if   (gotoIndex   <= minIndex)
					{
                		if(varPageId>0){
                			gotoIndex = currPageEnd;// currpage*pagesize+7;
                		}else{
                			gotoIndex   =   currPageEnd;
                		}
				    		currentLine   =  currPageEnd%8;//   maxlen-1  ;
//					        gotoIndex = currpage*pagesize+7;
					    	if(currPageCityNums<8) gotoIndex= currpage*pagesize + currPageCityNums-1 ;
					}					
//		            if(currentLine<=0)
//		        	{
//		        	        currentLine   =   maxlen;
//		        	}					
//            		alert(currentLine+' | '+gotoIndex +' | '+ (currpage*pagesize));
				    changeItem(gotoIndex);
		            break;
//		case 39: //右键
//		            currentCol++;
//		            changeItem(currentLine);
//		            break;
        case 40: //向下键
            		currentLine++;
            		gotoIndex = currentLine;
            		if(varPageId>0)
            			gotoIndex = currentLine + currpage*pagesize;
            		if(varPageId>0){
                		if   (gotoIndex   >  currPageEnd)
                		{
                	    	currentLine=0;
                			gotoIndex = currpageBegin;//currpage*pagesize;                	    	
                		}              			
            		}else{
                   		if   ( (gotoIndex >= 8  && maxlen>=8) || (maxlen<8 && gotoIndex>=maxlen ))
                		{
            			gotoIndex   =   0;
            			currentLine=0;
                		}
            		}
            		           		
//            		alert(currentLine+' | '+ gotoIndex +' | '+ (currpage*pagesize));
            		changeItem(gotoIndex);
            		break;
        case 13:
//        			alert("回车");
        			break;
        default:
            		break;
    }
    
//    alert(currentLine);
//	return false;

}

function changeItem(currentLine){

    for   (i=1;i<9;i++)   
    {
    	$("#menuA"+i).attr("style", "");
    }	
var linkcss ={background: '#EEE',border: '1px solid #CCC'};
//var objtab = document.getElementById("menuA"+currentLine);// document.all.ice;
$("#menuA"+(currentLine+1)).css(linkcss);
//	objrow[currentCol].select();
	//调试使用
//    it.rows[currentLine].className   =   "highlight";
}
	

