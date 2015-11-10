<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!-- 分页开始 -->
	<nav>
	  <ul class="pagination">
	  	<li class="${currentPage-1<1?'disabled':'' }"><a href="javascrip:;">首页</a></li>
	    <li class="${currentPage-1<1?'disabled':'' }">
	      <a href="javascrip:;" aria-label="Previous">
	        <span aria-hidden="true">上一页</span>
	      </a> 
	    </li>
	    <s:iterator begin="1" end="pageCount" var="p">
	    	<s:if test="#p==currentPage">
	    		<li class="active"><a href="javascrip:;">${p }</a></li>	
	    	</s:if>
	    	<s:else>
	    		<li><a href="javascrip:;">${p }</a></li>	
	    	</s:else>
	    </s:iterator>
	    <li class="${currentPage+1>pageCount?'disabled':'' }">
	      <a href="javascrip:;" aria-label="Next">
	        <span aria-hidden="true">下一页</span>
	      </a>
	    </li>
	    <li class="${currentPage+1>pageCount?'disabled':'' }"><a href="javascrip:;">尾页</a></li>
	  </ul>
	</nav>
<!-- 分页结束  -->