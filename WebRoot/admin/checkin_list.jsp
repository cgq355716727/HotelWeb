<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet"  href="./css/easyui.css">
	<link rel="stylesheet"  href="./css/icon.css">
	<link rel="stylesheet"  href="./css/demo.css"> 
	<link rel="stylesheet"  href="css/jquery.ui.all.css">
	<link rel="stylesheet"  href="css/demos.css">
 	<script src="./js/jquery-1.6.min.js"></script>
	<script src="./js/jquery.easyui.min.js"></script>	
	<script src="./js/jquery.ui.core.js"></script>
	<script src="./js/jquery.ui.widget.js"></script>
	<script src="./js/jquery.ui.datepicker.js"></script>
<script>

	$(function(){
	
				//doFirst();  //网页一打开就请求数据		
				
				$( "#from" ).datepicker({
					defaultDate: "+1w",
					changeMonth: true,
					numberOfMonths: 2,
					onClose: function( selectedDate ) {
						$( "#to" ).datepicker( "option", "minDate", selectedDate );
					}
				});
				$( "#to" ).datepicker({
					defaultDate: "+1w",
					changeMonth: true,
					numberOfMonths: 2,
					onClose: function( selectedDate ) {
						$( "#from" ).datepicker( "option", "maxDate", selectedDate );
					}
				});
				
				$("#first").click(doFirst);
				$("#previous").click(doPrevious);
				$("#next").click(doNext);
				$("#last").click(doLast);
				
			});
			
			function createTable(){
				var lastIndex;
			$('#tt').datagrid({
				toolbar:[{
					text:'append',
					iconCls:'icon-add',
					handler:function(){
					$('#tt').datagrid('endEdit', lastIndex);
						$('#tt').datagrid('appendRow',{
							order_Id:'',
							hotel_name:'',
							Room_Type_name:'',
							room_no:'',
							guest_name:'',
							id_card:'',
							check_in:'',
							check_out:'',
							deposit:'',
							cost:'',
							state:''
						});
						var lastIndex = $('#tt').datagrid('getRows').length-1;
						$('#tt').datagrid('selectRow', lastIndex);
						$('#tt').datagrid('beginEdit', lastIndex);
					}
				},'-',{
					text:'delete',
					iconCls:'icon-remove',
					handler:function(){
						var row = $('#tt').datagrid('getSelected');
						if (row){
							var index = $('#tt').datagrid('getRowIndex', row);
							$('#tt').datagrid('deleteRow', index);
						}
					}
				},'-',{
					text:'accept',
					iconCls:'icon-save',
					handler:function(){
						$('#tt').datagrid('acceptChanges');
					}
				},'-',{
					text:'reject',
					iconCls:'icon-undo',
					handler:function(){
						$('#tt').datagrid('rejectChanges');
					}
				},'-',{
					text:'GetChanges',
					iconCls:'icon-search',
					handler:function(){
						var rows = $('#tt').datagrid('getChanges');
						alert('changed rows: ' + rows.length + ' lines');
					}
				}],
				onBeforeLoad:function(){
					$(this).datagrid('rejectChanges');
				},
				onClickRow:function(rowIndex){
					if (lastIndex != rowIndex){
						$('#tt').datagrid('endEdit', lastIndex);
						$('#tt').datagrid('beginEdit', rowIndex);
					}
					lastIndex = rowIndex;
				}
				});		
			}
			
			
			function doFirst(){
				$("#tt").attr("url","order.action?method=queryAllOrders&jumpPage=1&random="+Math.random());
				createTable();
			}
				function doPrevious(){
				$("#tt").attr("url","order.action?method=queryAllOrders&jumpPage=2&random="+Math.random());
				createTable();
			}
				function doNext(){
				$("#tt").attr("url","order.action?method=queryAllOrders&jumpPage=3&random="+Math.random());
				createTable();
			}
				function doLast(){
				$("#tt").attr("url","order.action?method=queryAllOrders&jumpPage=1&random="+Math.random());
				createTable();
			}

</script>
<style type="text/css">

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</style>
<style type="text/css">
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {	color: #344b50;
	font-size: 12px;
}
.STYLE21 {	font-size: 12px;
	color: #3b6375;
}
.STYLE6 {color: #000000; font-size: 12; }
</style>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">基础设置</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="left_txt">基础设置</td>
          </tr>
          <tr>
            <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
              <tr>
                <td></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="10%" height="55" valign="middle"><img src="images/title.gif" width="54" height="55"></td>
                <td width="90%" valign="top"><br>
                                                         房间类型&nbsp;<select id="roomType" ></select>&nbsp;&nbsp;
                     <label for="from">入住时间</label><input type="text" id="from" name="from"/>
					 <label for="to">离开时间</label><input type="text" id="to" name="to"/>
                                                        宾馆名&nbsp;<select id="hotelName" ></select>       
                          
				</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;宾馆入住情况</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>
            <div id="showTable" >
            <div class="demo-info" style="margin-bottom:10px">
				<div class="demo-tip icon-tip"></div>
			</div>
            	<table id="tt" style="width:700px;height:auto"
					title="Editable DataGrid" iconCls="icon-edit" singleSelect="true"
					idField="itemid">
					<thead>
					<tr>
						<th field="order_Id" width="60" align="center">订单号</th>
						<th field="hotel_name" width="150" align="center">宾馆名</th>
						<th field="Room_Type_name" width="100" align="center" >房间类型</th>
						<th field="room_no" width="80" align="center">房间编号</th>
						<th field="guest_name" width="90" align="center" >顾客姓名</th>
						<th field="id_card" width="170" align="center" >身份证</th>
						<th field="check_in" width="220" align="center" >入住时间</th>
						<th field="check_out" width="220" align="center" >离开时间</th>
						<th field="deposit" width="60" align="center" >押金</th>
						<th field="cost" width="60" align="center" >费用</th>
						<th field="state" width="60" align="center" >状态</th>
					</tr>
				</thead>
			</table>
            </div>
            </td>
          </tr>
          <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共<strong>${ requestScope.maxCount }</strong> 项，当前第<strong> ${curPage }</strong> 页，每页 <strong>${rowsPerPage }</strong> 行</span></div></td>
        <td width="67%"><table width="312" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center"><img src="images/main_54.gif" id="first" width="40" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_56.gif" id="previous" width="45" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_58.gif" id="next" width="45" height="15" /></div></td>
            <td width="49"><div align="center"><img src="images/main_60.gif" id="last" width="40" height="15" /></div></td>
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
              <input type="text" name="textfield" id="textfield"  style="width:20px; height:12px; font-size:12px; border:solid 1px #7aaebd;"/>
            </div></td>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"><img src="images/main_62.gif" width="26" height="15" /></td>
            <td width="100"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
         
        </table>
          </td>
      </tr>
      
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
      <td height="17" valign="top" background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
    <td background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>

</body>
</html>