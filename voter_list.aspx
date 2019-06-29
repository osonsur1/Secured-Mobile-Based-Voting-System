<%@ page language="VB" autoeventwireup="false" inherits="voter_list, App_Web_voter_list.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Voter Listing| </title>
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
                                                <td valign="top" width="240">
                                                                <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center" style="background-color: #bdb78e">
                                                    <table width="70%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td colspan="8" align="right">
                                                                &nbsp; <a href="javascript:history.back(-1);" class="name" style="text-decoration:none;"> << Back</a></td>
                                                        </tr>
                                                      
                                                        <tr>
                                                            <td colspan="8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="8" class="name">
                                                                Candidate : <b><%=candidate_name%></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8">
                                                                <table width="80%" border="1" cellspacing="0" cellpadding="0" class="tablecell">
                                                                    <tr>
                                                                        <td class="name-table-heading" width="20">
                                                                            Sr.No.</td>
                                                                        <td class="name-table-heading">
                                                                            Date of Voting</td>
                                                                        <td class="name-table-heading">
                                                                            Voter Name</td>
                                                                        <td class="name-table-heading">
                                                                            User Name</td> 
                                                                       
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
 
