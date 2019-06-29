<%@ page language="VB" autoeventwireup="false" inherits="manage_votes, App_Web_manage_votes.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>

 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Manage Votes | </title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body style="background-color: peachpuff">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="3" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td class="left-bg">
            </td>
            <td align="center" valign="top" style="background-color: #b0e0fc">
                <!--MAIN OUTER TABLE STARTS HERE-->
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="main-table-bdr" style="background-color: #afeef5">
                    <tr>
                        <td valign="top" style="height: 518px; background-color: peachpuff">
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
                                    <td align="center" class="top-padding" style="background-color: peachpuff; height: 238px;">
                                        <!--MIDDLE TABLE STARTS HERE-->
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td valign="top" width="240">
                                                    <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center" style="background-color: #bdb78e">
                                                    <table width="70%" border="0" cellspacing="0" cellpadding="0" style="background-color: #bdb78e">
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #bdb78e; height: 103px;">
                                                                <table width="80%" border="1" cellspacing="0" cellpadding="0" class="tablecell">
                                                                    <tr>
                                                                        <td class="name-table-heading" width="20">
                                                                            Sr.No.</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Name</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Party</td>
                                                                        <td class="name-table-heading">
                                                                            Candidate Id</td>
                                                                        <td class="name-table-heading">
                                                                            Total Votes</td>
                                                                        <td class="name-table-heading">
                                                                            Action</td>
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
                                                                            <td class="name">
                                                                                <%=dr1.Item("candidate_name")%>
                                                                            </td>
                                                                            <td class="name">
                                                                                <%=dr1.Item("candidate_party")%>
                                                                            </td>
                                                                            <td class="name">
                                                                                <%=dr1.Item("candidate_id")%>
                                                                            </td>
                                                                            <td class="name">
                                                                                <%=dr1.Item("vote_count")%>
                                                                            </td>
                                                                            <td class="name">
                                                                                <a href="voter_list.aspx?c_id=<%=dr1.item("c_id")%>" class="action-links">View</a>
                                                                            </td>
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
                        <td style="height: 12px; background-color: peachpuff">
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
            <td colspan="3" class="admin-login1">
            </td>
        </tr>
    </table>
</body>
</html>

