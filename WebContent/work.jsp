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

    <table border="1" align="center">
    	<tr align="center">
    		<td colspan="4">产品管理</td>
    		
    	</tr>
    	<tr>
    		<td colspan="4">管理导航：  产品类别添加     产品信息管理</td>
    		
    	</tr>
    	<tr>
    		<td colspan="4"><input type="submit" value="添加产品内容" />
    		产品类别：
    		<select>
					  <option value ="volvo">请选择产品类别</option>
					  <option value ="saab">Saab</option>
					  <option value="opel">Opel</option>
					  <option value="audi">Audi</option>
			</select>
			关键字搜索<input type="text" ><input type="submit" value="确定" />
			
    		</td>
    		
			
    	</tr>
    	<tr>
    		<td colspan="4"><input type="submit" value="中文产品列表" /></td>
    		
    	</tr>
    	<tr>
    		<td colspan="4">选择语言<input type="radio">中文</td>
    		
    	</tr>
    	<tr>
    		<td>产品分类</td>
    		<td><select>
					  <option value ="volvo">水质分析仪</option>
					  <option value ="saab">Saab</option>
					  <option value="opel">Opel</option>
					  <option value="audi">Audi</option>
			</select></td>
			<td>发布日期</td>
			<td><input id="meeting" type="date" value="2014-01-13"/></td>
    	</tr>
    	<tr>
    		<td>产品名称</td>
    		<td><input type="text" name="firstname" value="水位跟踪者"></td>
    		<td>附件名称</td>
    		<td><input type="text" ></td>
    	</tr>
    	<tr>
    		<td>添加附件</td>
    		<td><input type="text" name="firstname" value="水位跟踪者"></td>
    		<td></td>
    		<td><input type="submit" value="删除" />
    		<input type="submit" value="查看" />
    		</td>
    	</tr>
    	<tr>
    		<td>简要介绍：<p style="color: red;">少于800字</p></td>
    		<td>
    		<textarea rows="10" cols="30">
						我是一个文本框。 
						</textarea>
			</td>
    		<td><input type="submit" value="添加产品介绍图片" /></td>
    		<td><img src="${pageContext.request.contextPath}/statices/img/111.png"></td>
    	</tr>
    	<tr align="center">
    		<td colspan="4">产品内容</td>
    		
    	</tr>
    	<tr>
 			<td colspan="4"><div id="editor">
        		<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    				</div>
    
				<script src="${pageContext.request.contextPath}/statices/js/wangEditor.min.js"></script>
				<script type="text/javascript">
			        var E = window.wangEditor
			        var editor = new E('#editor')
			        // 或者 var editor = new E( document.getElementById('editor') )
			    	// 上传图片到服务器(处理上传的后台代码)
			        editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload';
			     	// 隐藏“网络图片”菜单(true是显示--默认，false隐藏)
			        editor.customConfig.showLinkImg = false;
			     	// 将每张图片大小限制为 3M(单位为字节)
			        editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
			     	// 限制一次最多能传几张图片，默认为 10000 张（即不限制），需要限制可自己配置
			    	// 限制一次最多上传 5 张图片
			    	editor.customConfig.uploadImgMaxLength = 5;
			     	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
			     	editor.customConfig.uploadImgHooks = {
			    		// 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
			        	// （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
			        	// 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
			        	customInsert: function (insertImg, result, editor) {
			            	// insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
			            	// 举例：假如上传图片成功后，服务器端返回的是 [url,url,...] 这种格式，即可这样插入图片：
			            	for(var i in result){// result 必须是一个 JSON 格式字符串！！！否则报错
			            		insertImg('${pageContext.request.contextPath}/statices/file/'+result[i]);
			            	}
			        	}
			        }
			     	editor.customConfig.menus = [
			            'fontName',
			            'fontSize',
			            'italic',
			            'underline',
			            'strikeThrough',
			            'foreColor',
			            'image'
			        ]
			     	editor.customConfig.colors = [
			            '#000000',
			            '#eeece0',
			            '#1c487f',
			            '#4d80bf',
			            '#c24f4a',
			            '#8baa4a',
			            '#7b5ba1',
			            '#46acc8',
			            '#f9963b',
			            
			        ]
			     	editor.customConfig.pasteFilterStyle = false;//复制带有原来的样式
			     	editor.customConfig.pasteIgnoreImg = false;//不忽略复制带来的图
			     	        
			     	        editor.customConfig.pasteTextHandle = function (content) {
			     	        	return content ;
			     	        }
			        editor.create()//使用了create方法
			     
    		</script>
    		</td>
    	</tr>
    	
    </table>
   </form> 
    
</body>
</html>