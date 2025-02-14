<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  
    <title>Insert title here</title>
    <link rel="stylesheet" href="/resources/style/content-frame.css">
     <link rel="stylesheet" href="/resources/style/proposal/post.css">
    <link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
</head>
<body>



<div class="content-frame">
    <div class="frame-image">
        <div class="inner">
            <h2>제안결과</h2>
        </div>
    </div>
    <div class="frame-menu">
        <div class="inner menubar">
            <ul>
                <li class="menubar-icon">
                    <a href="/">
                        <div class="icon home"></div>
                    </a>
                </li>
                <li class="menubar-list">
                    <h3>참여하기<span class="slick-arrow"></span></h3>
                    <ul class="menu">
                        <li class="menuitem">
                            <a href="">참여하기</a>
                            <ul class="submenu">
                                <li><a href=""></a>시민제안</li>
                                <li><a href=""></a>시민토론</li>
                                <li><a href=""></a>서울시가 묻습니다</li>
                            </ul>
                        </li>
                        <li class="menuitem">
                            <a href="">결과보기</a>
                            <ul class="submenu">
                                <li><a href="">제안결과</a></li>
                                <li><a href="">공론결과</a></li>
                            </ul>
                        </li>
                        <li class="menuitem">
                            <a href="">알아보기</a>
                            <ul class="submenu">
                                <li><a href="">민주주의 서울 소개</a></li>
                                <li><a href="">민주주의 서울 이야기</a></li>
                                <li><a href="">공지사항</a></li>
                                <li><a href="">자료실</a></li>
                                <li><a href="">행사일정</a></li>
                            </ul>
                        </li>
                        <li class="menuitem">
                            <a href="">서울시민회의</a>
                            <ul class="submenu">
                                <li><a href="">서울시민회의 소개</a></li>
                                <li><a href="">서울시민회의 소식</a></li>
                            </ul>
                        </li>
                        <li class="menuitem">
                            <a href="">시민참여예산</a>
                        </li>
                    </ul>
                </li>
                <li class="menubar-list">
                    <h3>서브메뉴<span class="slick-arrow"></span></h3>
                    <ul class="menu">
                        <li class="menuitem">
                            <a href="">시민제안</a>
                        </li>
                        <li class="menuitem">
                            <a href="">시민토론</a>
                        </li>
                        <li class="menuitem">
                            <a href="">서울시가 묻습니다.</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

<section>
    <div class="inner">
       
        <div class="container" >
            <div class="contentTitle">
                <br><br>
                <div class="title">
                    <h5>서울시가 묻습니다.</h5>
                    <div class="proposalTitle">${requestScope.proposal.proposalTitle}</div>
                </div>
            </div><br>
            <div class="date">
                투표기간 : ${ requestScope.proposal.proposalStart} ~ ${ requestScope.proposal.proposalEnd}
            </div>
            <div class="hashtag">
                #동네책방 #동네책방
            </div>
            <br>
            <br>

          <%--   <c:if test="${sessionScope.adminId != null}"> --%>
	            <div class="adminCon">
	                <button class="editBtn" id="editBtn">수정</button>
	                <button class="delBtn" id="delBtn">삭제</button>
	                <button class="listBtn" id="listBtn">목록</button>
	            </div>
         <%--  	</c:if> --%>
           <hr style="color: #CCC">
          
          
            <article class="view_content">

           ${ requestScope.proposal.proposalContent }
                <br>
                <button class="survey">
                  		  설문조사 	
                </button>
            </article>
        </div>

  		
        <hr style="color: #CCC">

        <div class="sug">
            당신의 의견을 전달해주세요
        </div>

     	<div class="comment">
            <input type="hidden" name="proposalNo" class="proposalNo" />
            <div class="userNick" id="userId">${ requestScope.member.user }</div>
            <span class="today"> </span>
            <textarea class="content" placeholder="댓글을 입력하세요." userId="${requestScope.member.user}" id="comment" style="resize : none; width: 99%; height: 80%; border:0;"></textarea>
            <div align="right">
            <button onclick="addComment();">등록</button>
            </div>
        </div>

        
        <hr style="color: #CCC;">
        
         <!-- 댓글 목록 -->
        <div class="commentContainer" id="container">
        
         
        	<c:forEach items="${commentList}" var="item">
        	<div id=commentOne>
	         	<input type="hidden" name="proposalNo" class="proposalNo" value="${item.PROPOSALNO }" />
	            <div class="userId">${item.USERID}</div>
	            <div class="date">${item.REGDATE}</div> 
	            <div class="text">${item.CONTENT}</div>
            </div>
            </c:forEach>
            
        </div>
        
        <div class="more">
        	<button class="get" value="1" onclick="getList();">더보기</button>
        </div>
		
	</div>
</section>
        
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="/resources/script/content-frame.js"></script>
<script>
    var proposalNo = ${ proposal.proposalNo };
    var bLogin = ${ sessionScope.user != null };
    var totalCount = ${commentCount};
    var curPage = 1;
    

   		
   		function getList(){
   	    	if(totalCount <= curPage * 5) return ; // 이미 모든값을 가져와서 가져올 필요가 없음 
   	    	
   			curPage += 1;
   	    	$.ajax({
   	    		url: "/proposal/getComment.ajax",
   	    		type: "get",
   	    		data:{currentCommentPage: curPage,
   	    		proposalNo:proposalNo},
   	    		success: function(data){
   	    			for(const item of data) {
   	    				insertComment(item);
   	    			}
   	    		}
   	    	});
   	    };
   	    
   	    // 값을 data에 저장(for each안에 있는 모든 값들을) 암기하기!!!!! 
   	    function insertComment(data) {
   	    	console.log(data);
   	    	
   	    	var div = document.createElement('div');
   	    	var input = document.createElement('input');
   	    	input.setAttribute('type','hidden');
   	    	input.name = 'proposalNo';
   	    	input.classList.add('proposalNo');
   	    	input.value = data.PROPOSALNO;
   	    	div.appendChild(input);
   	    	
   	    	var div2 = document.createElement('div');
   	    	div2.classList.add('userId');
   	    	div2.innerText = data.USERID;
   	    	div.appendChild(div2);
   	    	
   	    	var div3 = document.createElement('div');
   	    	div3.classList.add('date');
   	    	div3.innerText = data.REGDATE;
   	    	div.appendChild(div3);
   	    	
   	    	var div4 = document.createElement('div');
   	    	div4.classList.add('text');
   	    	div4.innerText = data.CONTENT;
   	    	div.appendChild(div4);
   	    	
   	    	document.getElementById('container').appendChild(div);
   	    	
   	    }

 		
   	    function addComment(){
   	    	var comment = document.getElementById('comment').value;
   	    	$.ajax({
	   	    	type:'post',
	   	    	url: "/proposal/writeComment.do",
	   	    	data: {
	   	    		proposalNo: proposalNo,
	   	    		comment: comment
	   	    	},
	   	    	success: function(data) {
	   	    		if(data) alert('댓글이 등록했습니다.');
	   	    		insertComment({
	   	    			PROPOSALNO: proposalNo,
	   	    			USERID: '작성자',
	   	    			REGDATE: '2022-02-16',
	   	    			CONTENT: comment
	   	    		});
  	    		}
   	    	});
   	    }
   	    
    
    </script>
    
    

</body>
</html>