package com.oceans.semosun.common.util;

import org.springframework.stereotype.Component;

public class Utils {
	
	public static String getPageBar(int totalContents, int cPage, int numPerPage, String url){
	       return getPageBar(totalContents, cPage, numPerPage, url , "", -1, 0);
	   }
	   
	   public static String getPageBar(int totalContents, int cPage, int numPerPage, String url , String keyword){
	      return getPageBar(totalContents, cPage, numPerPage, url , keyword, -1, 0);
	   }
	   
	   public static String getPageBar(int totalContents, int cPage, int numPerPage, String url ,  int option){
	      return getPageBar(totalContents, cPage, numPerPage, url , "", option, 0);
	   }
	   
	   public static String getPageBar(int totalContents, int cPage, int numPerPage, int tNo, String url){
	      return getPageBar(totalContents, cPage, numPerPage, url , "", -1, tNo);
	   }
	   public static String getPageBar(int totalContents, int cPage, int numPerPage, String url , String keyword, int option){
	      return getPageBar(totalContents, cPage, numPerPage, url , keyword, option, 0);
	   }
	   
	public static String getPageBar(int totalContents, int cPage, int numPerPage, String url , String keyword, int option, int tNo){
		String pageBar = "";
		int pageBarSize = 5;
		cPage = cPage==0?1:cPage;
		
		//총페이지수 구하기
		int totalPage = (int)Math.ceil((double)totalContents/numPerPage);
		
		//1.pageBar작성
		//pageBar순회용변수 
		int pageNo = ((cPage - 1)/pageBarSize) * pageBarSize +1;
		//종료페이지 번호 세팅
		int pageEnd = pageNo+pageBarSize-1;
		System.out.println("totalPage : "+totalPage);
		System.out.println("pageStart["+pageNo+"] ~ pageEnd["+pageEnd+"]");
		
		pageBar += "<ul class='pagination justify-content-center pagination-sm'>";
		//[이전]section
		if(pageNo == 1 ){
			pageBar += "<li class='page-item disabled'>";
			pageBar += "<a class='page-link' href='#' tabindex='-1'>이전</a>";
			pageBar += "</li>";
		}
		else {
			pageBar += "<li class='page-item'>";
			pageBar += "<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
			pageBar += "</li>";
		}
		
		// pageNo section
		while(!(pageNo>pageEnd || pageNo > totalPage)){
			if(cPage == pageNo ){
				pageBar += "<li class='page-item active'>";
				pageBar += "<a class='page-link'>"+pageNo+"</a>";
				pageBar += "</li>";
			} 
			else {
				pageBar += "<li class='page-item'>";
				pageBar += "<a class='page-link' href='javascript:fn_paging("+pageNo+")'>"+pageNo+"</a>";
				pageBar += "</li>";
			}
			pageNo++;
		}
		
		//[다음] section
		if(pageNo > totalPage){
			pageBar += "<li class='page-item disabled'>";
			pageBar += "<a class='page-link' href='#'>다음</a>";
			pageBar += "</li>";
			
		} else {
			pageBar += "<li class='page-item'>";
			pageBar += "<a class='page-link' href='javascript:fn_paging("+pageNo+")'>다음</a> ";
			pageBar += "</li>";
		}
		
		
		pageBar += "</ul>";
		
		//2.스크립트 태그 작성
		//fn_paging함수
		pageBar += "<script>";
		pageBar += "function fn_paging(cPage,numPerPage){";
		
		if(keyword.trim().length() == 0 && option == -1 && tNo == 0) {
			pageBar += "location.href='"+url+"?cPage='+cPage;";
		} else if (tNo != 0) {
			pageBar += "location.href='"+url+"?tNo="+tNo+"&cPage='+cPage;";
		} else if (option == -1) {
			pageBar += "location.href='"+url+"?keyword="+keyword+"&cPage='+cPage;";
		} else {
			pageBar += "location.href='"+url+"?keyword="+keyword+"&option="+option+"&cPage='+cPage;";
		}
		pageBar += "}";
		pageBar += "</script>";
		
		return pageBar; 
	}

}
