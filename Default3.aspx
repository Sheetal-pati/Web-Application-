<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color:lightgrey;
        }
        #form1 {
    background-color:white;
    width:85%;
    height:100%;
    margin-left:90px;
    border:solid 2px;
    line-height:200%;
        }
        #main {
            margin-left:20px;
            margin-top:20px;
            font-size:large;
        }
        #Label14, #Label15 {
            color:darkmagenta;
            font-weight:600;
        }
        .topnav {
  overflow: hidden;
  background-color: darkblue;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}
        #button {
            margin-bottom:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label">Request No:</asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label">Status:</asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label">Applicant Deatils:</asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label">Contact Details:</asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label">Purpose:</asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label">Identification Proof:</asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Label">Arrival Date/Time:</asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Label">Depature Date/Time:</asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label">Booking Date/Time:</asp:Label>
        <asp:Label ID="Label10" runat="server" Text="Label">No. of Rooms Required:</asp:Label>
        <asp:Label ID="Label11" runat="server" Text="Label">Amount borne by:</asp:Label>
        <asp:Label ID="Label12" runat="server" Text="Label">Remarks:</asp:Label>
        <asp:Label ID="Label13" runat="server" Text="Label">Cancellation/Rejection Reason(if any):</asp:Label>
        <h3>Guest Details</h3>
        <asp:DataList ID="DataList1" runat="Server" DataSourceID="SqlDataSource1" DataKeyField="AutoID" Width="100%"
     RepeatColumns="2" RepeatDirection="horizontal" RepeatLayout="table" CellPadding="2" CellSpacing="1"
     BorderWidth="1">
    <ItemTemplate>
        <table  style="background-color:#efefef;width:100%;">
            <tr>
                <td>
                    Sl : <%# Eval("guestId") %> (Age: <%# Eval("age") %>, Gender: <%# Eval("gender") %>),  <%# Eval("contact") %><br />
                     <%# Eval("org") %><br />
                     <%# Eval("") %><br />                                        
                </td>
            </tr>
        </table>
    </ItemTemplate>
             <SeparatorTemplate>
        |||
    </SeparatorTemplate>
</asp:DataList> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ "data source=172.16.113.13;uid=sa;pwd=server;database=GUESTHOUSE;" %>'
 SelectCommand="Select * FROM guest ">
 </asp:SqlDataSource>
        <div id="button"> <asp:Button ID="Button1" runat="server" Text="Allot Room(s)" />
        <asp:Button ID="Button2" runat="server" Text="Cancel Booking" />
        <asp:Button ID="edit" runat="server" Text="Edit Details" OnClick="edit_Click" /></div>
    </div>
    </form>
</body>
</html>
