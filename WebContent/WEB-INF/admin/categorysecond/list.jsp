<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/resources/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/resources/js/public.js"></script>
		<script type="text/javascript">
			function addCategorySecond(){
// 				window.location = "${pageContext.request.contextPath}/admin/category/add.jsp";				
				window.location = "${pageContext.request.contextPath}/categorySecond_toAddCategorySecond.action";			
			}
		</script>
	</HEAD>
	<body>
		<br>
		<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>二级分类列表</strong>
						</TD>
					</tr>
					<tr>
						<td class="ta_01" align="right">
							<button type="button" id="add" name="add" value="添加" class="button_add" onclick="addCategorySecond()">
&#28155;&#21152;
</button>

						</td>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="18%">
										序号
									</td>
									<td align="center" width="17%">
										二级分类名称
									</td>
									<td width="7%" align="center">
										编辑
									</td>
									<td width="7%" align="center">
										删除
									</td>
								</tr>
								<s:iterator var="cs" value="page.list" status="status">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#cs.csname"/>
											</td>
											
											<td align="center" style="HEIGHT: 22px">
												<a href="${pageContext.request.contextPath}/category_toEdit.action?cid=<s:property value="#c.cid"/>">
													<img src="${pageContext.request.contextPath}/resources/images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											</td>
											
											<td align="center" style="HEIGHT: 22px">
												<a href="${pageContext.request.contextPath}/category_delete.action?cid=<s:property value="#c.cid"/>">
													<img src="${pageContext.request.contextPath}/resources/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
									</s:iterator>	
									<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="18%" colspan="4">
										第<s:property value="page.currentPage"/>/<s:property value="page.totalPages"/>页
										<s:if test="page.currentPage != 1">
											<a href="${pageContext.request.contextPath}/categorySecond_adminFindAll.action?currentPage=1">首页</a>
											<a href="${pageContext.request.contextPath}/categorySecond_adminFindAll.action?currentPage=<s:property value="page.currentPage-1"/>">上一页</a>
										</s:if>
										<s:if test="page.currentPage != page.totalPages">
											<a href="${pageContext.request.contextPath}/categorySecond_adminFindAll.action?currentPage=<s:property value="page.currentPage+1"/>">下一页</a>
											<a href="${pageContext.request.contextPath}/categorySecond_adminFindAll.action?currentPage=<s:property value="page.totalPages"/>">尾页</a>
										</s:if>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

