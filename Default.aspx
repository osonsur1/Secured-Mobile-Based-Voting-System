<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_default.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>Admin Panel </title>
 <uc2:header_html ID="Header_html1" runat="server" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

// ]]>
</script>
</head>
<body style="background-color:peachpuff;" > 
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
             <td colspan="3" style="height: 19px"></td>
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
                                    <td style="background-color: peachpuff">
                                          <uc1:header ID="Header1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff"></td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: peachpuff"><hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="top-padding" style="background-color: peachpuff;">
                                        <!--MIDDLE TABLE STARTS HERE-->
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="261" valign="top" style="height: 366px">
                                                     <uc3:left_menu ID="Left_menu1" runat="server" />
                                                </td>
                                                <td valign="top" align="center" style="width: 646px; height: 366px">
                                                    <!--LIST USERS TABLE STARTS HERE-->
                                                    <table width="97%" height="315" border="0" align="center" cellspacing="0" cellpadding="0" class="link-table-bdr">
                                                        <tr>
                                                            <td align ="center" style="height: 20px; background-color: transparent">
                                                                Welcome Admin
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="we lcome-administrator" align="center">
                                                                <!--WELCOME TABLES STARTS HERE-->
                                                                <!--WELCOME TABLES ENDS HERE-->
                                                                <table width="75%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td class="welcome-admin-align" style="width: 540px; height: 308px;">
                                                                            <img src="images/candidates_image/vote image.jpg" style="width: 560px; height: 296px; position: static;" id="IMG1" onclick="return IMG1_onclick()"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
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
                        <td style="height: 12px">
                            <!--blank row-->
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 55px"><hr />
                        </td>
                    </tr>
                     
                </table>
            </td>
            <td class="right-bg">
            </td>
        </tr>
        <tr>
             <td colspan="3" class="admin-login1"></td>
        </tr>
    </table>
</body>
</html>
