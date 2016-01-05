<%@ page language="java" import="java.util.*"
	import="com.education.experiment.commons.UserBean" pageEncoding="UTF-8"%>
<%@ include file="/share/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>启动微信数据分析</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/boxSearch.css" rel="stylesheet" type="text/css" />
<link href="css/reportOA.css" rel="stylesheet" type="text/css" />
<link href="css/new-style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.0.js"></script>
<script src="js/common/jobtracker.js"></script>
<script type="text/javascript">

$(function(){
	getRuningJob();
	getOtherJob();
});
	
</script>
</head>
<body>
<div class="hd-main" style="min-width:1000px;">
	<div class="logo-main" xmlns="http://www.w3.org/1999/xhtml">
		<img src="images/qixiang.png" /><span class="logo">气象数据分析系统</span>
	</div>
</div>
<div class="clearfix1 wrap">
	<div id="Container" style="float:left;width: 100%; height: 100%;min-width:790px;">
		<div class="fns">
			<div id="header-shaw" class="launchweather">
				<div class="title">
					<span class="title-left">微信关系分析系统 > 分析数据计算</span>
					<span class="title-right">
					<form action="weixinparsing" method="get">
						点击启动快件分析作业：
						<input class="button button-blue" name="" type="submit" value="启动" />
						</form>
					</span>
				</div>
				<div class="panel mb15">
					<div class="panel-title">正在进行的任务</div>
					<div class="panel-body">
						<table id='tab_running'>
							<thead>
								<tr>
									<th>ID</th>
									<th>名称</th>
									<th>所属用户</th>
									<th>开始时间</th>
									<th>map进度</th>
									<th class="last">reduce进度</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
				<div class="panel mb15">
					<div class="panel-title">已完成任务</div>
					<div class="panel-body">
						<table id='tab_completed'>
							<thead>
								<tr>
									<th>ID</th>
									<th>名称</th>
									<th>所属用户</th>
									<th class="last">开始时间</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>
				<div class="panel mb15">
					<div class="panel-title">失败任务</div>
					<div class="panel-body">
						<table id='tab_failed'>
							<thead>
								<tr>
									<th>ID</th>
									<th>名称</th>
									<th>所属用户</th>
									<th>开始时间</th>
									<th>map进度</th>
									<th class="last">reduce进度</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>job_201512290834_0009</td>
									<td>Parsing Weixin Data</td>
									<td>hadoop</td>
									<td>2016-01-0410:14:33</td>
									<td>100%</td>
									<td>100%</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="panel mb15">
					<div class="panel-title">已杀死任务</div>
					<div class="panel-body">
						<table>
							<thead id='tab_killed'>
								<tr>
									<th>ID</th>
									<th>名称</th>
									<th>所属用户</th>
									<th class="last">开始时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>job_201512290834_0009</td>
									<td>Parsing Weixin Data</td>
									<td>hadoop</td>
									<td>2016-01-0410:14:33</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/share/weixin-left.jsp"%>
</div>
<%@ include file="/share/foot.jsp"%>
</body>
</html>
