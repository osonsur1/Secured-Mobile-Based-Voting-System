<%@ page language="VB" autoeventwireup="false" inherits="candidates_details, App_Web_candidates_details.aspx.cdcab7d2" %>

<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <uc2:header_html ID="Header_html1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
         
            <table width="600" bgcolor="white" style="padding:50px 20px 50px 200px; background-color: #e0f1d9;">
            <tr>
                    <td    align="center" class="user-name" colspan="2"><strong>
                        <h2>Candidate Details</h2></strong></td>
                     
                </tr>
                <tr>
                    <td style="width: 226px" class="user-name" colspan="2"> 
                        </td>
                     
                </tr>
                <tr>
                    <td style="width: 226px" class="user-name"><strong>
                        Candidate Id :</strong></td>
                    <td class="user-name"><%=candidate_name%>
                    </td>
                </tr>
                <tr>
                    <td style="width: 226px" class="user-name"><strong>
                        Candidate user-name :</strong></td>
                    <td class="user-name"><%=candidate_id%>
                    </td>
                </tr>
                <tr>
                    <td style="width: 226px; height: 21px;" class="user-name"><strong>
                        Candidate Party :</strong></td>
                    <td class="user-name" style="height: 21px"><%=candidate_party %>
                    </td>
                </tr>
                <tr>
                    <td style="width: 226px" class="user-name"><strong>
                        Candidate Information : </strong></td>
                    <td class="user-name"><%=candidate_info%>
                    </td>
                </tr>
                <tr>
                    <td valign="top" colspan="2" class="user-name"><strong>
                        Candidate Image : </strong></td> 
                        <td align="left"><img src="<%=Trim(img_path_out & Request.QueryString("c_id") & "." & candidate_img_ext) %>" border="0" height="100" width="100" /> </td>
                </tr>
                
            </table>
         
    </form>
</body>
</html>
