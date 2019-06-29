<%@ page language="VB" autoeventwireup="false" inherits="manage_candidates, App_Web_manage_candidates.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Candidate | </title>
</head>
    <uc2:header_html ID="Header_html1" runat="server" />
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
                                                    <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center" style="background-color: #bdb78e">
                                                    <table width="60%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td colspan="8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" align="center" class="e_msg">
                                                                <%=mesg_out%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                <a href="add_edit_candidate.aspx" class="action-links-heading">Add New Candidate</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                <table width="100%" border="1" cellspacing="0" cellpadding="0" class="tablecell">
                                                                    <tr>
                                                                        <td class="name-table-heading" width="20">
                                                                            Sr.No.</td>
                                                                        <td class="name-table-heading">
                                                                            Date</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Name</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Id</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Party</td>
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
                                                                            <%=dr1.Item("candidate_name")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("candidate_id")%>
                                                                        </td>
                                                                        <td class="name">
                                                                            <%=dr1.Item("candidate_party")%>
                                                                        </td>
                                                                        <td class="name" width="30">
                                                                            <a href="add_edit_candidate.aspx?action=edit&c_id=<%=dr1.Item("c_id")%>" class="action-links">
                                                                                Edit</a></td>
                                                                        <!--<td class="name" width="100">
                                                                            <%'If dr1.Item("deleted") = 0 Then%>
                                                                            <a href="manage_candidates.aspx?action=deactivate&c_id=<%'=dr1.Item("c_id")%>" class="action-links">
                                                                                Deactivate</a>
                                                                            <%'Else%>
                                                                            <a href="manage_candidates.aspx?action=activate&c_id=<%'=dr1.Item("c_id")%>" class="action-links-deleted">
                                                                                Activate</a>
                                                                            <%'End If%>
                                                                        </td>-->
                                                                        <td class="name" width="40">
                                                                            <a href="manage_candidates.aspx?action=delete&c_id=<%=dr1.Item("c_id")%>" class="action-links">Delete</a></td>
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
                        <td style="height: 12px">
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
