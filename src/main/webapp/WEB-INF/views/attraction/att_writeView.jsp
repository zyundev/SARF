<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 세션값 확인 --%>
<%@page import="java.util.Enumeration"%>
<% 
Enumeration se = session.getAttributeNames();

while(se.hasMoreElements()){
   String getse = se.nextElement()+"";
   System.out.println("@@@@@@@ session : "+getse+" : "+session.getAttribute(getse));
}
%>
<%-- 세션값 확인 끝 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>명소 소개 글쓰기</title>
<!-- SmartEditor2 라이브러리 --> 
<script type="text/javascript" src="/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
* {
   border: 0;
   padding: 0;
}

body {
   overflow-x: hidden;
}

div {
   display: block;
}

.base-layout {
   width: 960px;
   margin: 0 auto;
}

.WritingHeader {
   position: relative;
   margin-top: 20px;
   border-bottom: 1px solid #323232;
}

h3 {
   display: block;
   font-size: 1.5em;
   font-weight: bold;
}

.WritingContent {
   position: relative;
   padding-top: 12px;
   padding-bottom: 50px;
}

.WritingTitle {
   padding: 5px 13px 5px 13px;
   border: 1px solid #ebecef;
}

.textarea_input {
   display: block;
   width: 100%;
   min-height: 40px;
   padding: 11px 12px 10px;
   border: 1px solid #ebecef;
   box-sizing: border-box;
   overflow: hidden;
   resize: none;
   word-break: break-all;
   font-size: 15px;
   letter-spacing: -.23px;
   line-height: 17px;
   outline: none;
   border-bottom: 1px solid black;
}

.BaseButton {
   display: inline-block;
   margin-top: 5px;
   font-weight: 700;
   float: right;
   width: 44px;
   height: 39px;
   background: #fff;
   font-weight: bold;
   border: 1px solid #4f9f4f;
   border-radius: 6px;
   cursor: pointer;
   margin-left: 5px;
   box-shadow: inset 0 0 0 1px #4f9f4f!important;
   transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
}

.BaseButton:hover{
   color:#ffffff;
   background-color:#4f9f4f;
}
.content{
   width: 100%;
}

*:focus { outline:none; }
</style>
</head>
<body>

   <header>
      <%@ include file="../h_list/introw_head.jsp" %>
   </header>
   
   <div class="base-layout">
      <div class="WritingHeader">
         <h3>명소게시판 글쓰기</h3>
      </div>
      <div class="WritingContent">
         <form class="writeForm" name="writeForm" method="post" action="/attraction/write" enctype="multipart/form-data"> 
            <!-- 구역 구분 -->
            <div class="WritingTitle">지역
               <select class="keychk" name="key">
                  <option value="wrong" selected>지역을 선택해주세요.</option>
                  <option value="EAST">강동</option>
                  <option value="WEST">강서</option>
                  <option value="SOUTH">강남</option>
                  <option value="NORTH">강북</option>
               </select>
            </div>
            <!-- 제목 -->
            <div>
               <textarea class="textarea_input" placeholder="제목을 입력해 주세요." name="subject" style="height: 40px;"></textarea>
            </div>
            <!-- 내용 -->
            <textarea placeholder="내용을 입력해 주세요." class="content"id="content" name="content" style="resize: none; font-size: 15px; outline: none;" rows="22" cols="115"></textarea>
               <!-- SmartEditor2 -->
               <script type="text/javascript">
                 var oEditors = [];
                 nhn.husky.EZCreator.createInIFrame({
                     oAppRef: oEditors,
                     elPlaceHolder: "content",
                     sSkinURI: "/smarteditor2/SmartEditor2Skin.html",
                     fCreator: "createSEditor2",
                     htParams: { 
                        bUseVerticalResizer : false,
                        fOnBeforeUnload : function(){}
                     }  
                 });
                 function submitContents(elClickedObj) {
                     // 에디터의 내용이 textarea에 적용됩니다.
                     oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
                     // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
          
                     try {
                         elClickedObj.form.submit();
                     } catch(e) {}
                   }
            </script>
            <script>
               $(function() {
                  $("#BaseButton").click(function() {
                     oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); 
                     //textarea의 id를 적어줍니다.
                  });
               })
            </script>
            <!-- 더 알아보기  -->
            <div>
               <label>더 알아보기</label>
               <input type="text" name="link" value="http://">
            </div>
            <!-- 이미지 업로드 -->
            <label>썸네일 이미지 1 </label><input type="file" name="file"><br>
            <label>썸네일 이미지 2 </label><input type="file" name="file2"><br>
            <label>썸네일 이미지 3 </label><input type="file" name="file3">
            <div style="border: 1px solid black;">
               <button type="button" class="BaseButton" onclick="location.href='/attraction/list'">취소</button> 
               <button id="BaseButton" type="submit" class="BaseButton" onclick="write_btn()">등록</button>
            </div>
         </form>
      </div>
   </div>
   <script>
      function write_btn(){
         if($('.keychk').val() == "wrong"){
            alert('지역을 선택해주세요.');
            
            return false;
         }
         if($('.textarea_input').val() == ""){
            alert('제목을 입력해주세요.');
            
            return false;
         }
         $('.writeForm').submit();
      }
   </script>
</body>
</html>