<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style type="text/css">
			svg:not(:root).svg-inline--fa {
				overflow: visible
			}
			
			.svg-inline--fa {
				display: inline-block;
				font-size: inherit;
				height: 1em;
				overflow: visible;
				vertical-align: -.125em
			}
			
			.svg-inline--fa.fa-lg {
				vertical-align: -.225em
			}
			
			.svg-inline--fa.fa-w-1 {
				width: .0625em
			}
			
			.svg-inline--fa.fa-w-2 {
				width: .125em
			}
			
			.svg-inline--fa.fa-w-3 {
				width: .1875em
			}
			
			.svg-inline--fa.fa-w-4 {
				width: .25em
			}
			
			.svg-inline--fa.fa-w-5 {
				width: .3125em
			}
			
			.svg-inline--fa.fa-w-6 {
				width: .375em
			}
			
			.svg-inline--fa.fa-w-7 {
				width: .4375em
			}
			
			.svg-inline--fa.fa-w-8 {
				width: .5em
			}
			
			.svg-inline--fa.fa-w-9 {
				width: .5625em
			}
			
			.svg-inline--fa.fa-w-10 {
				width: .625em
			}
			
			.svg-inline--fa.fa-w-11 {
				width: .6875em
			}
			
			.svg-inline--fa.fa-w-12 {
				width: .75em
			}
			
			.svg-inline--fa.fa-w-13 {
				width: .8125em
			}
			
			.svg-inline--fa.fa-w-14 {
				width: .875em
			}
			
			.svg-inline--fa.fa-w-15 {
				width: .9375em
			}
			
			.svg-inline--fa.fa-w-16 {
				width: 1em
			}
			
			.svg-inline--fa.fa-w-17 {
				width: 1.0625em
			}
			
			.svg-inline--fa.fa-w-18 {
				width: 1.125em
			}
			
			.svg-inline--fa.fa-w-19 {
				width: 1.1875em
			}
			
			.svg-inline--fa.fa-w-20 {
				width: 1.25em
			}
			
			.svg-inline--fa.fa-pull-left {
				margin-right: .3em;
				width: auto
			}
			
			.svg-inline--fa.fa-pull-right {
				margin-left: .3em;
				width: auto
			}
			
			.svg-inline--fa.fa-border {
				height: 1.5em
			}
			
			.svg-inline--fa.fa-li {
				width: 2em
			}
			
			.svg-inline--fa.fa-fw {
				width: 1.25em
			}
			
			.fa-layers svg.svg-inline--fa {
				bottom: 0;
				left: 0;
				margin: auto;
				position: absolute;
				right: 0;
				top: 0
			}
			
			.fa-layers {
				display: inline-block;
				height: 1em;
				position: relative;
				text-align: center;
				vertical-align: -.125em;
				width: 1em
			}
			
			.fa-layers svg.svg-inline--fa {
				-webkit-transform-origin: center center;
				transform-origin: center center
			}
			
			.fa-layers-counter,
			.fa-layers-text {
				display: inline-block;
				position: absolute;
				text-align: center
			}
			
			.fa-layers-text {
				left: 50%;
				top: 50%;
				-webkit-transform: translate(-50%, -50%);
				transform: translate(-50%, -50%);
				-webkit-transform-origin: center center;
				transform-origin: center center
			}
			
			.fa-layers-counter {
				background-color: #ff253a;
				border-radius: 1em;
				-webkit-box-sizing: border-box;
				box-sizing: border-box;
				color: #fff;
				height: 1.5em;
				line-height: 1;
				max-width: 5em;
				min-width: 1.5em;
				overflow: hidden;
				padding: .25em;
				right: 0;
				text-overflow: ellipsis;
				top: 0;
				-webkit-transform: scale(.25);
				transform: scale(.25);
				-webkit-transform-origin: top right;
				transform-origin: top right
			}
			
			.fa-layers-bottom-right {
				bottom: 0;
				right: 0;
				top: auto;
				-webkit-transform: scale(.25);
				transform: scale(.25);
				-webkit-transform-origin: bottom right;
				transform-origin: bottom right
			}
			
			.fa-layers-bottom-left {
				bottom: 0;
				left: 0;
				right: auto;
				top: auto;
				-webkit-transform: scale(.25);
				transform: scale(.25);
				-webkit-transform-origin: bottom left;
				transform-origin: bottom left
			}
			
			.fa-layers-top-right {
				right: 0;
				top: 0;
				-webkit-transform: scale(.25);
				transform: scale(.25);
				-webkit-transform-origin: top right;
				transform-origin: top right
			}
			
			.fa-layers-top-left {
				left: 0;
				right: auto;
				top: 0;
				-webkit-transform: scale(.25);
				transform: scale(.25);
				-webkit-transform-origin: top left;
				transform-origin: top left
			}
			
			.fa-lg {
				font-size: 1.33333em;
				line-height: .75em;
				vertical-align: -.0667em
			}
			
			.fa-xs {
				font-size: .75em
			}
			
			.fa-sm {
				font-size: .875em
			}
			
			.fa-1x {
				font-size: 1em
			}
			
			.fa-2x {
				font-size: 2em
			}
			
			.fa-3x {
				font-size: 3em
			}
			
			.fa-4x {
				font-size: 4em
			}
			
			.fa-5x {
				font-size: 5em
			}
			
			.fa-6x {
				font-size: 6em
			}
			
			.fa-7x {
				font-size: 7em
			}
			
			.fa-8x {
				font-size: 8em
			}
			
			.fa-9x {
				font-size: 9em
			}
			
			.fa-10x {
				font-size: 10em
			}
			
			.fa-fw {
				text-align: center;
				width: 1.25em
			}
			
			.fa-ul {
				list-style-type: none;
				margin-left: 2.5em;
				padding-left: 0
			}
			
			.fa-ul>li {
				position: relative
			}
			
			.fa-li {
				left: -2em;
				position: absolute;
				text-align: center;
				width: 2em;
				line-height: inherit
			}
			
			.fa-border {
				border: solid .08em #eee;
				border-radius: .1em;
				padding: .2em .25em .15em
			}
			
			.fa-pull-left {
				float: left
			}
			
			.fa-pull-right {
				float: right
			}
			
			.fa.fa-pull-left,
			.fab.fa-pull-left,
			.fal.fa-pull-left,
			.far.fa-pull-left,
			.fas.fa-pull-left {
				margin-right: .3em
			}
			
			.fa.fa-pull-right,
			.fab.fa-pull-right,
			.fal.fa-pull-right,
			.far.fa-pull-right,
			.fas.fa-pull-right {
				margin-left: .3em
			}
			
			.fa-spin {
				-webkit-animation: fa-spin 2s infinite linear;
				animation: fa-spin 2s infinite linear
			}
			
			.fa-pulse {
				-webkit-animation: fa-spin 1s infinite steps(8);
				animation: fa-spin 1s infinite steps(8)
			}
			
			@-webkit-keyframes fa-spin {
				0% {
					-webkit-transform: rotate(0);
					transform: rotate(0)
				}
				100% {
					-webkit-transform: rotate(360deg);
					transform: rotate(360deg)
				}
			}
			
			@keyframes fa-spin {
				0% {
					-webkit-transform: rotate(0);
					transform: rotate(0)
				}
				100% {
					-webkit-transform: rotate(360deg);
					transform: rotate(360deg)
				}
			}
			
			.fa-rotate-90 {
				-webkit-transform: rotate(90deg);
				transform: rotate(90deg)
			}
			
			.fa-rotate-180 {
				-webkit-transform: rotate(180deg);
				transform: rotate(180deg)
			}
			
			.fa-rotate-270 {
				-webkit-transform: rotate(270deg);
				transform: rotate(270deg)
			}
			
			.fa-flip-horizontal {
				-webkit-transform: scale(-1, 1);
				transform: scale(-1, 1)
			}
			
			.fa-flip-vertical {
				-webkit-transform: scale(1, -1);
				transform: scale(1, -1)
			}
			
			.fa-flip-horizontal.fa-flip-vertical {
				-webkit-transform: scale(-1, -1);
				transform: scale(-1, -1)
			}
			
			:root .fa-flip-horizontal,
			:root .fa-flip-vertical,
			:root .fa-rotate-180,
			:root .fa-rotate-270,
			:root .fa-rotate-90 {
				-webkit-filter: none;
				filter: none
			}
			
			.fa-stack {
				display: inline-block;
				height: 2em;
				position: relative;
				width: 2.5em
			}
			
			.fa-stack-1x,
			.fa-stack-2x {
				bottom: 0;
				left: 0;
				margin: auto;
				position: absolute;
				right: 0;
				top: 0
			}
			
			.svg-inline--fa.fa-stack-1x {
				height: 1em;
				width: 1.25em
			}
			
			.svg-inline--fa.fa-stack-2x {
				height: 2em;
				width: 2.5em
			}
			
			.fa-inverse {
				color: #fff
			}
			
			.sr-only {
				border: 0;
				clip: rect(0, 0, 0, 0);
				height: 1px;
				margin: -1px;
				overflow: hidden;
				padding: 0;
				position: absolute;
				width: 1px
			}
			
			.sr-only-focusable:active,
			.sr-only-focusable:focus {
				clip: auto;
				height: auto;
				margin: 0;
				overflow: visible;
				position: static;
				width: auto
			}
		</style>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/froala_blocks.min.css">
		<link rel="stylesheet" href="css/css.css">
		<link rel="stylesheet" href="css/froala_editor.pkgd.min.css">
		<link rel="stylesheet" href="css/froala_style.min.css">
	</head>

	<body>

		<header data-block-type="headers" data-id="1">
			<div class="container">
				<nav class="navbar navbar-expand-md">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav0" aria-controls="navbarNav0" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

					<div class="collapse navbar-collapse" id="navbarNav0">
						<ul class="navbar-nav mr-auto ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="index.jsp">首页 </a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="repair.jsp">网络报修</a>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="retrieve.jsp">报修查询</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="admin/index.jsp">进入后台</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>

		<section class="fdb-block bg-gray" data-block-type="forms" data-id="4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center" style="z-index: 10000;">
						<p><img alt="image" height="40" src="https://cdn.jsdelivr.net/gh/froala/design-blocks@2.0.1/dist/imgs//icons/layers.svg" class="fr-fic fr-dii"></p>
						<h1>查询报修</h1>
						<p class="lead"></p>
						<div class="input-group mt-4 mb-4"><input  type="text" class="form-control" placeholder="请输入您报修填的学号" value="">
							<div class="input-group-append"><button id="btn1" class="btn btn-primary" type="button" >查询</button></div>
							
						</div>
						<p class="h5">
							<em>*刚提交的报修请等候管理员上班处理.</em>
						</p>
					</div>
				</div>
				<div class="row justify-content-center">
				  <table class="table table-bordered table-hover table-condensed">
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
			</div>
		</section>

		<footer class="fdb-block footer-small fp-active" data-block-type="footers" data-id="3">
			<div class="container">
				<div class="row text-center">
					<div class="col fr-box" role="application" style="z-index: 10000;">
						<div class="fr-wrapper" dir="auto">
							<div class="fr-element fr-view" dir="auto" contenteditable="true" aria-disabled="false" spellcheck="true">
								<p>© 2019 gdyvc. All Rights Reserved</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<script src="js\jquery.min.js"></script>
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
	      	location.reload()//重新加载当前文档
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
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>