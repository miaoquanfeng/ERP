<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function() {
		$("#query").click(function() {
			$("[name='pageNum']").val(1);
			$("form:first").submit();
		});
	});
	function showMsg(msg,uuid){
		top.$('context-msg').style.display = "block";
		top.$('context-msg-text').innerHTML=msg;
		top.$('hid-action').value="actionName";
		top.lock.show();
	}
</script>
<div class="content-right">
	<div class="content-r-pic_w">
		<div style="margin:8px auto auto 12px;margin-top:6px">
			<span class="page_title">仓库管理</span>
		</div>
	</div>
	<div class="content-text">
		<<form action="list.jsp" method="post"> 
			<div class="square-o-top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					style="font-size:14px; font-weight:bold; font-family:"黑体";">
					<tr>
						<td width="10%">仓库名称:</td>
						<td width="20%"><input type="text" size="20" /></td>
						<td width="10%">容&nbsp;&nbsp;积&nbsp;&nbsp;量:</td>
						<td width="20%"><input type="text" size="16" />&nbsp;米<sup>3</sup>&nbsp;</td>
						<td width="3%">到</td>
						<td width="26%"><input type="text" size="16" />&nbsp;米<sup>3</sup>&nbsp;</td>
						<td width="">
							<a id="query"><img src="images/can_b_01.gif" border="0" /> </a></td>
					</tr>
					<tr>
						<td>管&nbsp;理&nbsp;员:</td>
						<td><input type="text" size="20" /></td>
						<td>当前容积量：</td>
						<td><input type="text" size="16" />&nbsp;米<sup>3</sup>&nbsp;</td>
						<td>到</td>
						<td><input type="text" size="16" />&nbsp;米<sup>3</sup>&nbsp;</td>
						<td>
							<a href="store_input"><img src="images/can_b_02.gif" border="0" /> </a>
						</td>
					</tr>
				</table>
			</div>
			<!--"square-o-top"end-->
			<div class="square-order">
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<tr align="center"
						style="background:url(images/table_bg.gif) repeat-x;">
						<td width="10%" height="30">仓库名称</td>
						<td width="10%">仓库管理员</td>
						<td width="44%">仓库地址</td>
						
						<td width="16%">操作</td>
					</tr>
						<s:iterator value="list">
						<tr align="center" bgcolor="#FFFFFF">
							<td width="13%" height="30">${name }</td>
							<td>${employee.name }</td>
							<td align="left">&nbsp;${address }</td>
						
							<td>
								<img src="images/icon_3.gif" /> 
								<span style="line-height:12px; text-align:center;"> 
									<a href="./input.jsp" class="xiu">修改</a> 
								</span> 
								<img src="images/icon_04.gif" /> 
								<span style="line-height:12px; text-align:center;"> 
									<a href="javascript:void(0)" class="xiu" onclick="showMsg('是否删除该项数据？',318)">删除</a>
								</span>
							</td>
						</tr>
						</s:iterator>
				</table>
			</div>
		</form>
	</div>
	<div class="content-bbg"></div>
</div>
