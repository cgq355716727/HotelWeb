<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 	<script src="./js/jquery-1.6.min.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>
<script type="text/javascript">

	$(function(){
		$("#tt").click(alterTable);
		$(".save").click(save);
		$(".delete").click(del);
	});
	
	function alterTable(){
	 
		 var e=event.srcElement;
		 if(e.tagName=="DIV"){
		    var id=$(e).attr("id");
		 	if(id=="introduction"){
		 		
		 		var value=e.innerHTML;
		 		e.innerHTML="<textarea id='introduction'>"+value+"</textarea>";
		 	}else if(id=="roomTypename"){
		 	
			 	var value=e.innerHTML;
			 	e.innerHTML="<input name='roomTypename'  value='"+value+"' />";
		 	}else if(id=="roomPrice"){
		 		var value=e.innerHTML;
			 	e.innerHTML="<input name='roomPrice'  value='"+value+"' />";
		 	}         
		 }	
	}
	
	function del(){
	
		$(event.srcElement).parent().parent().attr("action","roomType.action?method=delRoomType");
		//$(event.srcElement).parent().parent().action="roomType.action?method=delRoomType";
		$(event.srcElement).parent().parent().submit();
	}
	
	function save(){
	
		$(event.srcElement).parent().parent().submit();
/*		$(event.srcElement).siblings().each(function(a,b){		
			if(b.children.length!=0){
				var value=b.children[0].value;
				b[1].innerHTML=value;			
			}		
		});
		var params={};
		params.roomTypeId=paramDom[0].value;
		//alert(params.roomTypeId);
		if(paramDom[1].children.length!=0){
			params.roomTypeName=paramDom[1].children[0].value;
			paramDom[1].innerHTML=params.roomTypeName;			
		}else{
			params.roomTypeName=paramDom[1].innerHTML;
		}
		if(paramDom[3].children.length!=0){
			params.roomPrice=paramDom[3].children[0].value;
			paramDom[3].innerHTML=params.roomPrice;			
		}else{
			params.roomPrice=paramDom[3].innerHTML;
		}
		if(paramDom[5].children.length!=0){
			params.introduction=paramDom[5].children[0].value;
			paramDom[5].innerHTML=params.introduction;			
		}else{
			params.introduction=paramDom[5].innerHTML;
		}
		params.imageUrl=paramDom[6].value;
		var url="roomType.action?method=updRoomType";
		$.getJSON(url,params);
*/				
	}
</script>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
        <tr>
          <td height="31"><div class="titlebt">添加房型</div></td>
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
                <td class="left_txt">当前位置：添加房型</td>
              </tr>
              <tr>
                <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                    <tr>
                      <td><br></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="10%" height="55" valign="middle"><img src="images/title.gif" width="54" height="55"></td>
                      <td width="90%" valign="top"><span class="left_txt2">在这里，您可以根据您的需要，我们给你登记合适你的房间</span></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
            <table align="center" id="tt" style="width:80%;height:auto;top:50px"  border="1">
            	<% int i=0; %>          	
            	<c:forEach var="roomType" items="${ roomTypes }">    
            		<% if((i++) % 2==0){
            			out.write("<tr>");
            		} %> 
            		<form action="roomType.action?method=updRoomType" method="post" enctype="multipart/form-data"  >  	
            		<td class="image"  width="28%">
            		<img src="<%=basePath%>${ roomType.imageUrl }" width="280px" /><br>
            		
            		</td>
            		<td width="22%" style="top:50ox">
         					<input type="hidden" name="roomTypeId" value=" ${roomType.roomTypeid }" />
         					房间类型：<div id="roomTypename" style="display:inline">${ roomType.roomTypename }</div>&nbsp;&nbsp;&nbsp;&nbsp;
         					<input  class="save" type="button" value="save" style="top:50px">
         					<input class="delete" type="button"  value="delete" align="right"><br/>
         					价格：<div id="roomPrice" style="display:inline">${ roomType.roomPrice }</div><br/>
         					简介：<div class="introduction" id="introduction" style="display:inline">${ roomType.introduction }</div><br/>
							<input type="file"/>
					</td>
					</form>
					<% if(i % 2==0){
            			out.write("</tr>");
            		} %> 		
            	</c:forEach>            
			</table>
              </tr>
			  <tr>
                <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                    <tr>
                      <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;输入预订信息  &nbsp;&nbsp;&nbsp;&nbsp;<c:if test="${ ! empty (msg) }">${ msg }</c:if></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td>
                <form method="post" action="roomType.action?method=addRoomType" enctype="multipart/form-data">
                <table width="80%" border="0" cellspacing="0" cellpadding="0"> 
                    
                    <tr>
                      <td width="31%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">房间类型名：</td>
                      <td width="2%" bgcolor="#f2f2f2">&nbsp;</td>
                      <td width="27%" height="30" bgcolor="#f2f2f2"><input name="roomTypename" type="text" id="roomTypename" size="30" /></td>
                      <td width="40%" height="30" bgcolor="#f2f2f2" class="left_txt"> 房间类型名</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">房间的价格：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" id="roomPrice" name="roomPrice" size="30" /></td>
                      <td height="30" class="left_txt">房间的价格</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">简介：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" id="introduction" name="introduction" size="30" /></td>
                      <td height="30" class="left_txt">简介</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">图片上传：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="file" id="imageUrl" name="imageUrl" size="30" /></td>
                      <td height="30" class="left_txt">上传房间图片</td>
                    </tr>
                    <tr>
                      <td width="31%" height="30" align="right">&nbsp;</td>
                      <td width="2%" height="30" align="right">&nbsp;</td>
                      <td width="27%" height="30"><input type="submit" value="添加房间型号" name="add" id="add" /> 
                                                <input type="reset" value="取消设置" name="B12" /></td>
                    </tr>
                    <tr>
                      <td height="17" colspan="4" align="right" >&nbsp;</td>
                    </tr>
                </table>
                </form>
                </td>
              </tr>
            </table></td>
        </tr>
      </table></td>
</table>
</body>
</html>
