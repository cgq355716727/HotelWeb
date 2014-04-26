package com.commons;

/**
 * title:分页工具类
 * @author Administrator
 *
 */
public class PageBean {

	private int curPage;//页码
	private int rowsPrePage;//每页码显示的条数
	private int maxPage;//总页码
	private int maxCount;//总记录数
	
	public PageBean( int maxCount,int rowsPrePage ){
		
	 this.maxCount = maxCount;
	 this.rowsPrePage = rowsPrePage;
	 maxPage();
		
	}
	
	public PageBean(){
		
	}
	
	//计算总页码
	public void maxPage(){
		
		if( maxCount % rowsPrePage == 0 ){
			
			maxPage = maxCount / rowsPrePage;
		}else{
			maxPage = maxCount / rowsPrePage+1;
		}
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getRowsPrePage() {
		return rowsPrePage;
	}
	public void setRowsPrePage(int rowsPrePage) {
		this.rowsPrePage = rowsPrePage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getMaxCount() {
		return maxCount;
	}
	public void setMaxCount(int maxCount) {
		this.maxCount = maxCount;
	}
}
