<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>作业</title>
    
</head>
<body>
<form action="form_action.asp" method="get">

    <table border="1" bgcolor="CCFFFF">
    	<tr>
    		<td>招聘对象</td>
    		<td><input type="text" name="firstname" value="行业经理"></td>
    	</tr>
    	<tr>
    		<td>招聘人数</td>
    		<td><input type="text" name="firstname" value="2">人</td>
    	</tr>
    	<tr>
    		<td>工作地点</td>
    		<td><input type="text" name="firstname" value="上海"></td>
    	</tr>
    	<tr>
    		<td>工资待遇</td>
    		<td><input type="text" name="firstname" value="面议"></td>
    	</tr>
    	<tr>
    		<td>发布日期</td>
    		<td><input type="text" name="firstname" value="2020年3月6日"></td>
    	</tr>
    	<tr>
    		<td>有效期限</td>
    		<td><input type="text" name="firstname" value="20">天</td>
    	</tr>
    	<tr>
    		<td>招聘要求</td>
    		<td><div id="editor">
        		<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    				</div>
    
				<script src="${pageContext.request.contextPath}/statices/js/wangEditor.min.js"></script>
				<script type="text/javascript">
			        var E = window.wangEditor
			        var editor = new E('#editor')
			        // 或者 var editor = new E( document.getElementById('editor') )
			        editor.create()//使用了create方法
			     
    		</script>
    		</td>
    	</tr>
    	<tr align="center">
    	<td colspan="2"><input type="submit" value="确定" />&nbsp;<input type="submit" value="取消" /></td>
    		
    	</tr>
    </table>
   </form> 
    
</body>
</html>