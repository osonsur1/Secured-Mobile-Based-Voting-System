<%@ page language="VB" autoeventwireup="false" inherits="login, App_Web_login.aspx.cdcab7d2" %>


<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Admin Login</title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body style="background-color: peachpuff">
     
    <table width="90%" border="0" class="table-padding" cellspacing="0" cellpadding="0">
												<tr>
													<td class="admin-login" style="height: 20px; background-color: transparent" align="center" valign="baseline"></td>
												</tr>
												<tr>
													<td align="center" style="height: 19px; background-color: transparent">
														<!--USER NAME & PASSWORD TABLE STARTS HERE-->
														<form name="frm_login" method="post"  action="login.aspx" onsubmit="return validateCompleteForm(this);" style="background-color: linen">
															<table width="90%" border="0" cellspacing="0" cellpadding="0">
														
																<tr>
																	<td height="20" colspan="2"></td>
																</tr>
															
																<% If mesg_out <> "" then%>
																															<tr>
																	<td colspan="2" class="error-msg" align="center" style="height: 19px">
																		<%=mesg_out%>
																	</td>
																	
																</tr>
																<% End If %>
																<tr>
																	<td colspan="2" style="height: 20px"></td>
																</tr>
																
																<tr>
																	<td class="user-name" style="color: black; height: 20px">Select Type</td>
																	<td style="height: 20px"><input type="radio" name="admin_type" checked="checked" value="1" />Admin&nbsp;&nbsp;<input type="radio" name="admin_type" value="2" />User</td>
																</tr>
																<tr>
																<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td class="user-name" style="height: 24px">USER NAME :</td>
																	<td style="height: 24px"><input name="puser" type="text" class="txt-field-bdr" maxlength="20" size="20" required="1"
																			realname="User Name"></td>
																</tr>
																<tr>
																<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td class="user-name">PASSWORD :</td>
																	<td valign="top"><input name="ppass" type="password" class="txt-field-bdr" maxlength="20" size="20" minlength="4"
																			required="1" realname="Password"></td>
																</tr>
																<tr>
																<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td>&nbsp;</td>
																	<td><input type="submit" name="action" value="login" /></td>
																</tr>
																<tr>
																	<td  height="30"></td>
																</tr>
															</table>
														</form>
														<!--USER NAME & PASSWORD TABLE ENDS HERE-->
													</td>
												</tr>
												<tr>
													<td class="admin-login-bottom-bg" style="height: 19px; background-color: transparent;"></td>
												</tr>
											</table>
						    
</body>
</html>
