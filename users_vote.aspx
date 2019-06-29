<%@ page language="VB" autoeventwireup="false" inherits="users_vote, App_Web_users_vote.aspx.cdcab7d2" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="header_html.ascx" TagName="header_html" TagPrefix="uc2" %>
<%@ Register Src="left_menu.ascx" TagName="left_menu" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Candidate | </title>

    <script type="text/javascript">
     
		 function pop2(b)
			{
				var props = "toolbar=no,location=no,status=no,scrollbars=yes,resizable=no,titlebar=no,menubar=no,left=50,top=50,width=750,height=350,position=center";
				url="candidates_details.aspx?c_id="+b
				w=window.open(url,"CandidateDetails",props)
				
			}
		
    function vote_cast(c_id)
    {
     
        if (c_id != null)
        {
        
        var r = confirm("Are you sure want to Vote this candidate \n Once you vote any candidate ,you do not allow to vote again.");
		if (r==true)
	        {
	        
                
                document.getElementById("frm_vote").action="users_vote.aspx?action=vote";
                document.forms.frm_vote.submit();
		        
	        }
                
           else
           {
            return false;
           }
           
        }
        
    }
function show_option(c_id)
{
    var j=0;
     for (var i = 0; i < document.forms.frm_vote.c_id.length; i++) 
        {
        
             if( document.forms.frm_vote.c_id[i].checked==true)
             
                {
                  j=j+1;
                }  
        }
   if (j==0)
       {
            alert("Please Select candidate to vote");
            return false;
       }
       else
       {
             return vote_cast(c_id);
             
       } 
}    
    
    </script>
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
                        <td valign="top" style="background-color: lightgrey">
                            <!--CONTENT TABLE STARTS HERE-->
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                  <uc1:header ID="Header1" runat="server" />                                    </td>
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
                                                 
                                                </td>
                                                <td valign="top" align="center">
                                                    <table width="60%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td colspan="8" style="background-color: #a6ccff">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" class="error-msg" align="center" style="background-color: #a6ccff">
                                                                <%=mesg_out%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #a6ccff">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="8" style="background-color: #a6ccff">
                                                            <%If Flag=true then %>
                                                                <table width="100%" border="1" cellspacing="0" cellpadding="0" class="tablecell">
                                                                    <tr>
                                                                        <td class="name-table-heading" style="width: 45px; height: 40px">
                                                                            Sr.No.</td>
                                                                        <td class="name-table-heading" style="height: 40px">
                                                                            Date</td>
                                                                        <td class="name-table-heading" style="height: 40px">
                                                                            Candidate Name</td>
                                                                        <td class="name-table-heading" style="height: 40px">
                                                                            Candidate Id</td>
                                                                        <td class="name-table-heading" style="height: 40px">
                                                                            Candidate Party</td>
                                                                        <td class="name-table-heading" colspan="3" style="height: 40px">
                                                                            Actions</td>
                                                                    </tr>
                                                                    <form name="frm_vote" id="frm_vote" method="post">
                                                                        <%
                                                                        If dt_list.Rows.Count > 0 Then
                                                                            Dim i As Int16 = 0
                                                                                For Each dr1 In dt_list.Rows
                                                                                    i += 1
                                                                        %>
                                                                        <tr>
                                                                            <td class="name" style="width: 45px">
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
                                                                                <input type="radio" name="c_id" value="<%=dr1.Item("c_id")%>" id="vote_cast_<%=dr1.Item("c_id")%>" />
                                                                                Casting
                                                                            </td>
                                                                            <td class="name"><a href="javascript:pop2(<%=dr1.Item("c_id")%>);">View Candidate Details</a></td>
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
                                                                    <tr><td colspan="8"></td></tr>
                                                                         <tr>
                                                                         <td colspan="8" align="center"><input type="submit" name="submit" value="Vote Cast" onclick="return show_option(<%=dr1.Item("c_id")%>);" /></td>
                                                                         </tr>
                                                                    </form>
                                                                </table>
                                                                <%End If %>
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
                        <td height="12" style="background-color: lightgrey">
                            <!--blank row-->
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: lightgrey">
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
