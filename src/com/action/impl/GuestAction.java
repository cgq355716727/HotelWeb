package com.action.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.action.ActionDispatcher;
import com.action.ActionForm;
import com.action.ActionForward;
import com.action.ActionMapping;
import com.commons.Log;
import com.commons.PageBean;
import com.service.IGuestService;
import com.service.impl.GuestService;
import com.vo.GuestVo;
import com.vo.OrderListVo;
import com.vo.OrderViewVo;

public class GuestAction extends ActionDispatcher{

	private IGuestService guestService;
	
	public GuestAction(){
		
		guestService = new GuestService();
	}

	//登录
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//日志
		//Log.log(this, "Login:"+"GuestVo login");
				GuestVo vo = (GuestVo)form;
				System.out.println( "vo.username:"+vo.getGuestName()+" password:"+vo.getGuestName() );
				//登录
				guestService.Login(vo);
				System.out.println("-----------getIdCard:"+vo.getIdCard());
				if( vo.getGuestType()>0 ){	
					//把用户数据放于session 
					request.getSession().setAttribute( "guestinfo", vo );
					System.out.println("-----------if( vo.getIdCard():"+vo.getIdCard());
					Log.log(this, "vo.getGuestType()"+vo.getGuestType());
					return mapping.findForward( "showorderlist" );
					//return mapping.findForward( "showMsg" );
				}else{
					Log.log(this, "登陆错误vo.getGuestType()"+vo.getGuestType());
					return mapping.findForward( "error" );
				}
	}
	//注册
	public ActionForward register(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
			GuestVo vo = (GuestVo)form;
//			vo.setGuestName(request.getParameter("guestName"));
//			vo.setGuestPw(request.getParameter("guestPw"));
//			vo.setGuestType(Integer.parseInt( request.getParameter("guestType")));
			System.out.println("name"+vo.getGuestName());
//			vo.setIdCard(request.getParameter("idCard"));
//			vo.setGuestMobile(request.getParameter("guestMobile"));
			
			guestService.Register(vo);
			return null;
	}

	//用户信息修改
	public ActionForward modify(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		GuestVo vo =(GuestVo)form;
		//vo.setIdCard((String)request.getSession().getAttribute("guestinfo"));
		System.out.println(vo.getGuestName());
		int flag = guestService.modify(vo);
		if(flag>0){
			
			return mapping.findForward( "success" );
			
		}else{
			
			return mapping.findForward( "error" );			
			
		}

	}
	
	//查看用户自己的订单
	public ActionForward showOrderList(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) {
			// TODO Auto-generated method stub
			Log.log(this, "showOrderList...........");
			//分页处理
			//GuestVo vo= (GuestVo) request.getSession().getAttribute("guestinfo");
			
			HttpSession session=request.getSession();
			GuestVo vo=(GuestVo)session.getAttribute("guestinfo");
			String idCard= vo.getIdCard();
			//String idCard= "43576789479367146x";
			
			Log.log(this, "idCard = "+idCard);
			System.out.println("guestService.queryOrderCount(idCard)="+guestService.queryOrderCount(idCard));
			
			if(guestService.queryOrderCount(idCard)>0){
				PageBean page = new PageBean(guestService.queryOrderCount(idCard),5);
					//处理页面
				int jumpPage = 1;
				if(request.getParameter( "jumpPage" )!="" && request.getParameter( "jumpPage" )!=null){
					System.out.println("request.getParameter( 'jumpPage' )"+request.getParameter( "jumpPage" ));
					jumpPage = Integer.parseInt( request.getParameter( "jumpPage" ) );
				}
				if(jumpPage<=1){
					
					page.setCurPage(1);
					
				}else if(jumpPage>=page.getMaxPage()){
					
					page.setCurPage(page.getMaxPage());
				}else{
					page.setCurPage(jumpPage);
				}
				
				//取当前页的数据
				List<OrderViewVo> list =guestService.showOrderList(page.getCurPage(), page.getRowsPrePage(),idCard);
				//将数据存放在request中
				request.setAttribute("orderList", list);
				request.setAttribute( "page", page );
				Log.log(this, "showOrderList........list.size="+list.size());				
				return mapping.findForward( "success" );
			}
			return mapping.findForward( "myorder" );
		}
	
}
