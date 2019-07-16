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
        .tb {
            border-style:none;
            margin-left:20px;
        }
        .tbx {
             border-style:none;
            margin-left:20px;
            padding:0;
        }
        #GridView1,#EDIT {
            margin-left:20px;
        }
        #GridView1 {
            border:2px solid darkblue;
        }
        #Label15 {
        margin-bottom:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="topnav">
  <a href="#home">Dashboard</a>
  <a href="#news">Enquiry List/Room Allotment</a>
  <a href="#contact">Checkin/CheckOut</a>
  <a href="#about">Billing</a>
  <a href="#home">Cash Commitment</a>
  <a href="#home">Feedback</a>
  <a href="#home">Room Status</a>
  <a href="#home">Notice</a>
</div>
    <div id="main">
        <asp:Label ID="Label1" runat="server" Text="Label">Request No:</asp:Label>
        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label">Status:</asp:Label>
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Label">Applicant Details:</asp:Label>
        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Label">Contact Details:</asp:Label>
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="Label">Purpose:</asp:Label>
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label6" runat="server" Text="Label">Identification Proof:</asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">Click Here</asp:LinkButton><br />
        <asp:Label ID="Label7" runat="server" Text="Label">Arrival Date/Time:</asp:Label>
        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label8" runat="server" Text="Label">Depature Date/Time:</asp:Label>
        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label9" runat="server" Text="Label">Booking Date/Time:</asp:Label>
        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label10" runat="server" Text="Label">No. of Rooms Required:</asp:Label>
        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label11" runat="server" Text="Label">Amount borne by:</asp:Label>
        <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label12" runat="server" Text="Label">Remarks:</asp:Label>
        <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label13" runat="server" Text="Label">Cancellation/Rejection Reason(if any):</asp:Label>
        <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label><br />
        </div>
            <h3 style="margin-left:20px">Guest Details</h3>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="EDIT" runat="server" Text="EDIT" onClick="EDIT_Click"/>
  
</form>
</body>
</html>
