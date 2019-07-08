<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>Insert title here</title>
<script src="js/jquery.min.js">

</script>
<script type="text/javascript">
function getRootPath() {
    // 1、获取当前全路径，如： http://localhost:8080/springmvc/page/frame/test.html
    var curWwwPath = window.location.href;
    // 获取当前相对路径： /springmvc/page/frame/test.html
    var pathName = window.location.pathname;    // 获取主机地址,如： http://localhost:8080
    var local = curWwwPath.substring(0,curWwwPath.indexOf(pathName));  
    // 获取带"/"的项目名，如：/springmvc  
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);  
    var rootPath = local + projectName;  
    return rootPath; 
};
/*
 * 删除报修单ajax
 */
function cancel(id){
	var data = 'order.id='+id
	$.ajax({
		  type:'get',
		  url:getRootPath()+'/user-deleteOrder',
		  data:data,
	      contentType:'application/x-www-form-urlencoded;charset=utf-8',
	      success:function(){
	      	alert("删除成功");
	      },
		  error:function(){
		  	alert("失败");
		  }
   });
};

$(document).ready(function(){
  $('table').hide();
  $('#btn1').click(function(){
	var data = 'order.stuId='+$('input').val()
    
	$.ajax({
		type:'get',
		url:getRootPath()+'/user-queryOrderByStuid',
		data:data,
	    contentType:'application/x-www-form-urlencoded;charset=utf-8',
		success:function(data){
			console.log(data);
			$('table').show();
			var responseData = data;
			var html="";
			for(var i = 0; i < data.length;i++){
				html+=  '<tr>'
				html+=    "<td>"+data[i].cre_time+"</td>"
				html+=    "<td>"+data[i].name+"</td>"
				html+=    "<td>"+data[i].moblie+"</td>"
				html+=    "<td>"+data[i].place+"</td>"
				html+=    "<td>"+data[i].status+"</td>"
				html+=	  "<td>"+"<a onclick='cancel("+data[i].id+")'>取消</a>"+"</td>"
				html+=  "</tr>"
			}
			$("tbody").html(html);
		},
		error:function(){
			alert("查询失败")
		}
	})
	
  });
  
});

</script>
</head>

<body>


<div class="container">
	<div class="row">
		<input type="text"></input>
	<button id="btn1">查询</button>
	</div>       
  <table class="table table-striped table-bordered table-hover">
    <thead>
      <tr>
        <th>报修时间</th>
        <th>姓名</th>
        <th>手机</th>
        <th>地点</th>
        <th>状态</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>

    </tbody>
  </table>
</div>
</body>

<script src="js/bootstrap.min.js"></script>
</html>