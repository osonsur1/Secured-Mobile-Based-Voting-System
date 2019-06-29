<%@ page language="VB" autoeventwireup="false" inherits="add_edit_voters, App_Web_add_edit_voters.aspx.cdcab7d2" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Voter | </title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body style="background-color: peachpuff">
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
                                                    <form name="frm_add_voter" method="post" id="frm_add_candidate" onsubmit="return validateCompleteForm(this);">
                                                        &nbsp;<table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td height="20" colspan="2">
                                                                </td>
                                                            </tr>
                                                            <%=voter_email_id%>
                                                            <tr>
                                                                <td colspan="2" class="error-msg" align="center">
                                                                    <%=action_out%>
                                                                </td>
                                                            </tr>
                                                            <%IIF(action_out="add","add","edit")%>
                                                            <tr>
                                                                <td class="user-name">
                                                                    Voter Name *:</td>
                                                                <td>
                                                                    <input name="voter_name" type="text" class="txt-field-bdr" size="20" required="1"
                                                                        realname="Voter Name" value="<%=voter_name%>"></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="user-name">
                                                                    User Name *:</td>
                                                                <td valign="top">
                                                                    <input name="voter_user_name" type="text" class="txt-field-bdr" size="20" required="1"
                                                                        realname="User Name" value="<%=voter_user_name%>"></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="user-name">
                                                                    Email Id *:</td>
                                                                <td valign="top">
                                                                    <input name="voter_email_id" type="text" class="txt-field-bdr" size="20" required="1"
                                                                        regexp="JSVAL_RX_EMAIL" realname="Email Id" value="<%=voter_email_id%>"></td>
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
                                                                        src="images/<%=IIF(action_out="add","add","edit")%>_button.gif" />&nbsp;&nbsp;<a href="javascript:document.forms.frm_add_candidate.reset();"><img
                                                                            src="images/reset-button.gif" border="0" /></a></td>
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

