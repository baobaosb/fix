<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>后台管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">



    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
<script src="vendor/jquery/jquery.min.js"></script>
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
function accept(id){
	var data = 'order.id='+id
	$.ajax({
		  type:'get',
		  url:getRootPath()+'/user-acceptOrder',
		  data:data,
	      contentType:'application/x-www-form-urlencoded;charset=utf-8',
	      success:function(){
	      	alert("受理成功");
	      	location.reload()//重新加载当前文档
	      },
		  error:function(){
		  	alert("失败");
		  }
   });
};

$(document).ready(function(){
  $('table').hide();
	$.ajax({
		type:'get',
		url:getRootPath()+'/user-queryOrderAll',
	    contentType:'application/x-www-form-urlencoded;charset=utf-8',
		success:function(data){
			console.log(data);
			$('table').show();
			var responseData = data;
			var html="";
			for(var i = 0; i < data.length;i++){
				if(data[i].status!=0) continue;
				html+=  '<tr>'
				html+=    "<td>"+data[i].name+"</td>"
				html+=    "<td>"+data[i].mobile+"</td>"
				html+=    "<td>"+data[i].type+"</td>"
				html+=    "<td>"+data[i].place+"</td>"
				html+=    "<td>"+data[i].descrip+"</td>"
				html+=	  "<td>"+"<a onclick='accept("+data[i].id+")'>受理</a>"+"</td>"
				html+=  "</tr>"
			}
			$("tbody").html(html);
		},
		error:function(){
			alert("查询失败")
		}
	})
  
});

</script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Admin v1.0</a>
            </div>
            <!-- /.navbar-header -->

            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> 后台</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 报修管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="accept.jsp">待受理</a>
                                </li>
                                <li>
                                    <a href="repair.jsp">待维修</a>
                                </li>
                                <li>
                                    <a href="complete.jsp">已完成</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="editInfo.jsp"><i class="fa fa-edit fa-fw"></i> 资料修改</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> 系统管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="person.jsp">人员管理</a>
                                </li>
                                <li>
                                    <a href="report.jsp">报表统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
							<a href="#"><i class="fa fa-files-o fa-fw"></i>退出登录</a>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">待受理表单</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
			
           <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          	  已经报修，但没有开始受理的报修单，请审阅
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
							    <thead>
							      <tr>
							        <th>姓名</th>
							        <th>手机</th>
							        <th>类型</th>
							        <th>地点</th>
							        <th>描述</th>
							        <th>操作</th>
							      </tr>
							    </thead>
							    <tbody>
							
							    </tbody>
							  </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

 

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</html>
