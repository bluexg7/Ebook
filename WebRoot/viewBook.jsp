<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html> 
<script type="text/javascript">
 var v="<s:property value='#isUploaded'/>";
 var stop="<s:property value='#stopQuery'/>";
 if(v=="true")
 {
    v=false;
    alert("上传成功");   
 }
 if(stop!="true")
 {
   stop=false;
   window.location.href="BookList";
 }
 function uping()
 {
  var filename=document.getElementById("uploadingFile").value;
  if(filename=="")
  {
  alert("请选择文件");
  return false;
  }
  document.getElementById("s1").style.display="";
  return true;
 }
 
</script>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /> 
<title>电子书阅读</title> 

</head> 
<style type="text/css">  
body { 
font: normal 17px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #4f6b72; 
background: #E6EAE9; 
} 

a { 
color: #c75f3e; 
} 

#mytable { 
width: 700px; 
padding: 0; 
margin: 0; 
} 

caption { 
padding: 0 0 5px 0; 
width: 700px; 
font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
text-align: right; 
} 

th { 
font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #4f6b72; 
border-right: 1px solid #C1DAD7; 
border-bottom: 1px solid #C1DAD7; 
border-top: 1px solid #C1DAD7; 
letter-spacing: 2px; 
text-transform: uppercase; 
text-align: left; 
padding: 6px 6px 6px 12px; 
background: #CAE8EA  no-repeat; 
} 
/*power by www.winshell.cn*/ 
th.nobg { 
border-top: 0; 
border-left: 0; 
border-right: 1px solid #C1DAD7; 
background: none; 
} 

td { 
border-right: 1px solid #C1DAD7; 
border-bottom: 1px solid #C1DAD7; 
background: #fff; 
font-size:11px; 
padding: 6px 6px 6px 12px; 
color: #4f6b72; 
} 
/*power by www.winshell.cn*/ 

td.alt { 
background: #F5FAFA; 
color: #797268; 
} 

th.spec { 
border-left: 1px solid #C1DAD7; 
border-top: 0; 
background: #fff no-repeat; 
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
} 

th.specalt { 
border-left: 1px solid #C1DAD7; 
border-top: 0; 
background: #f5fafa no-repeat; 
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #797268; 
} 
/*---------for IE 5.x bug*/ 
html>body td{ font-size:11px;} 
body,td,th { 
font-family: 宋体, Arial; 
font-size: 12px; 
} 
</style> 
<body>
<s:form method="post"  onsubmit="return uping()" action="uploadFile" enctype="multipart/form-data">
      <s:file name="file" id="uploadingFile"  theme="simple"/>
      <s:submit label="上传" value="上传"  theme="simple"></s:submit>
      <s:reset  label="重设" value="重设"  theme="simple"></s:reset>
      <span id="s1" style="display:none">&nbsp;&nbsp;&nbsp;正在上传...</span>
 </s:form>
 <h1>我的书单</h1>
 
<table id="mytable" cellspacing="0"> 
<caption> </caption> 
<tr> 
<th scope="col">书名</th> 
<th scope="col">作者</th> 
</tr> 
<tr> 
<s:iterator value="booklist">
 <tr>
 <td  class="row"><a target="_blank" href='QueryBook?fileIndex=<s:property value="bookFile"/>&chapterPath=<s:property value="chapterPath"/>'><s:property value="bookname"/></a></td>
 <td  class="row"><s:property value="author"/></td>
 </tr>
 </s:iterator>
</tr> 
</table> 
</body> 
</html> 