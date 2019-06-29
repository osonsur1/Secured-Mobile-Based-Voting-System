<%@ page language="VB" autoeventwireup="false" inherits="manage_voters, App_Web_manage_voters.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>

 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Voter | </title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body style="background-color: peachpuff">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="3" style="background-color: #ffffff">
            </td>
        </tr>
        <tr>
            <td class="left-bg" style="background-color: #ffffff">
            </td>
            <td align="center" valign="top" style="background-color: peachpuff">
                <!--MAIN OUTER TABLE STARTS HERE-->
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="main-table-bdr">
                    <tr>
                        <td valign="top" style="background-color: peachpuff; height: 559px;">
                            <!--CONTENT TABLE STARTS HERE-->
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td style="background-color: peachpuff">
                                        <!--Header -->
                                        <uc1:header ID="Header1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="top-padding" style="background-color: peachpuff">
                                        <!--MIDDLE TABLE STARTS HERE-->
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td valign="top" width="240">
                                                    <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center" style="background-color: #bdb78e">
                                                    <table width="70%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e; height: 19px;">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" align="center" class="e_msg" style="background-color: #bdb78e">
                                                                <%=mesg_out%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                <a href="add_edit_voters.aspx" class="action-links-heading">Add New Voter</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                <table width="80%" border="1" cellspacing="0" cellpadding="0" class="tablecell">
                                                                    <tr>
                                                                        <td class="name-table-heading" width="20">
                                                                            Sr.No.</td>
                                                                        <td class="name-table-heading">
                                                                            Date</td>
                                                                        <td class="name-table-heading">
                                                                            Voter Name</td>
                                                                        <td class="name-table-heading">
                                                                            User Name</td>
                                                                        <td class="name-table-heading">
                                                                            Pin No.</td>
                                                                        <td class="name-table-heading">
                                                                            Email Id</td>
                                                                        <td class="name-table-heading">
                                                                            Voted</td>
                                                                        <td class="name-table-heading" colspan="2">
                                                                            Actions</td>
                                                                    </tr>
                                                                    <%
                                                                        If dt_list.Rows.Count > 0 Then
                                                                            Dim i As Int16 = 0
                                                                            For Each dr1 In dt_list.Rows
                                                                                i += 1
                                                                    %>
                                                                    <tr>
                                                                        <td class="name">
                                                                            <%=i%>
                                                                            .</td>
                                                                        <td class="name" width="120">
                                                                            <%=Format(dr1.Item("dt_created"), "dd/MM/yyyy")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("voter_name")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("voter_user_name")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("voter_pin")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("voter_email_id")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=IIf(dr1.Item("voted") = "1", "Yes", "No")%>
                                                                        </td>
                                                                        <td class="name" width="30">
                                                                            <a href="add_edit_voters.aspx?action=edit&voter_id=<%=dr1.Item("voter_id")%>" class="action-links">
                                                                                Edit</a></td>
<%--                                                                        <td class="name" width="100">
                                                                            <%If dr1.Item("deleted") = 0 Then%>
                                                                            <a href="manage_voters.aspx?action=deactivate&voter_id=<%=dr1.Item("voter_id")%>"
                                                                                class="action-links">Deactivate</a>
                                                                            <%Else%>
                                                                            <a href="manage_voters.aspx?action=activate&voter_id=<%=dr1.Item("voter_id")%>" class="action-links-deleted">
                                                                                Activate</a>
                                                                            <%End If%>
                                                                        </td>--%>
                                                                        <td class="name" width="40">
                                                                            <a href="manage_voters.aspx?action=delete&voter_id=<%=dr1.Item("voter_id")%>" class="action-links">Delete</a></td>
                                                                    </tr>
                                                                    <%  Next dr1
                                                                    Else
                                                                    %>
                                                                    <tr>
                                                                        <td colspan="8" align="center" class="e_msg">
                                                                            No records found.</td>
                                                                    </tr>
                                                                    <%
                                                                    End If%>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td style="background-color: #bdb78e">&nbsp;</td></tr>
                                                        <tr>
                                                        <td align="right" style="background-color: #bdb78e"><input type="button" onclick="javascript:window.print();" value="Print" name="Print" /></td>
                                                        </tr>
                                                    </table>
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
                        <td height="12" style="background-color: peachpuff">
                            <!--blank row-->
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: peachpuff">
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-bg">
            </td>
        </tr>
        <tr>
            <td colspan="3" class="admin-login1" style="background-color: peachpuff; height: 19px;">
            </td>
        </tr>
    </table>
</body>
</html>
