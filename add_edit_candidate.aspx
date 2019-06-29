<%@ page language="VB" autoeventwireup="false" inherits="add_edit_candidate, App_Web_add_edit_candidate.aspx.cdcab7d2" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Candidate | </title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body>
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td class="left-bg">
            </td>
            <td align="center" valign="top">
                <!--MAIN OUTER TABLE STARTS HERE-->
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="main-table-bdr">
                    <tr>
                        <td valign="top">
                            <!--CONTENT TABLE STARTS HERE-->
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <!--Header -->
                                        <uc1:header ID="Header1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="top-padding">
                                        <!--MIDDLE TABLE STARTS HERE-->
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td valign="top">
                                                    <!-- Left menu -->
                                                    <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center">
                                                    <!--LIST USERS TABLE STARTS HERE
                                                    -->
                                                    <form name="frm_add_candidate" method="post" enctype="multipart/form-data" id="frm_add_candidate" onsubmit="return validateCompleteForm(this);">
                                                        &nbsp;<table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td height="20" colspan="2">
                                                                </td>
                                                            </tr>
                                                            <% If mesg_out <> "" Then%>
                                                            <tr>
                                                                <td colspan="2" class="error-msg" align="center">
                                                                    <%=mesg_out%>
                                                                </td>
                                                            </tr>
                                                            <% End If%>
                                                            <tr>
                                                                <td class="user-name">
                                                                    Candidate Name *:</td>
                                                                <td>
                                                                    <input name="candidate_name" type="text" class="txt-field-bdr" size="20" required="1"
                                                                        realname="Candidate Name" value="<%=candidate_name%>" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="user-name">
                                                                    Candidate Party *:</td>
                                                                <td valign="top">
                                                                    <input name="candidate_party" type="text" class="txt-field-bdr" size="20" required="1"
                                                                        realname="Candidate Party" value="<%=candidate_party%>" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="user-name" valign="top">
                                                                    Candidate Info :</td>
                                                                <td valign="top">
                                                                    <textarea id="candidate_info" rows="5" cols="30" name="candidate_info"><%=candidate_info%></textarea></td>
                                                            </tr>
                                                             <tr>
                                                                <td class="user-name" valign="top">
                                                                    Candidate Image :</td>
                                                                <td valign="top">
                                                                <%If action_out = "edit" Then%>
                                                                    <img src="<%=Trim(img_path_out & Request.QueryString("c_id") & "." & img_ext)%>" border=0" height="50" width="50" />
                                                                <%End If%>
                                                                   <input type="file" name="file1" id="file1" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <input type="hidden" name="action" value="<%=action_out%>" /><input type="image"
                                                                        src="images/<%=IIF(action_out="add","add","edit")%>_button.gif" />&nbsp;&nbsp;<a
                                                                            href="javascript:document.forms.frm_add_candidate.reset();"><img src="images/reset-button.gif"
                                                                                border="0" /></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="30">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </form>
                                                    <!--LIST USERS TABLE ENDS HERE-->
                                                </td>
                                            </tr>
                                        </table>
                                        <!--MIDDLE TABLE ENDS HERE-->
                                    </td>
                                </tr>
                            </table>
                            <!--CONTENT TABLE ENDS HERE-->
                        </td>
                    </tr>
                    <tr>
                        <td height="12">
                            <!--blank row-->
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-bg">
            </td>
        </tr>
        <tr>
            <td colspan="3" class="admin-login1">
            </td>
        </tr>
    </table>
</body>
</html>
