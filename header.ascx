<%@ control language="VB" autoeventwireup="false" inherits="header, App_Web_header.ascx.cdcab7d2" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="3%">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="150px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <a href="default.aspx?">
                                                                    </a></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td align="right">
                                                    <table width="90%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td class="slogan" width="30%">
                                                            </td>
                                                            <td class="dotted-bdr">
                                                                <table width="90%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td class="welcome" style="font-weight: bolder; font-size: medium; text-transform: capitalize; color: gray; font-family: Georgia;">
                                                                            Welcome  <%=Session.Item("admin_username")%> </td>
                                                                        <td class="company-name-date" align="left" style="font-weight: bolder; font-size: medium; text-transform: capitalize; color: gray; font-family: Georgia">
                                                                            Vote Cast</td>
                                                                    </tr>
                                                                    <% If Session.Item("admin_logged_in") = "1" Then%>
                                                                    <tr>
                                                                        <td class="welcome" style="height: 19px">
                                                                        </td>
                                                                        <td class="company-name-date" style="height: 19px">
                                                                            <a href="login.aspx?msg=losucc" class="logout-link">
                                                                                <img src="images/logout_img.gif" width="10" height="9" border="0">&nbsp;Logout</a></td>
                                                                    </tr>
                                                                    <% End If%>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="1%">
                                                </td>
                                            </tr>
                                        </table>