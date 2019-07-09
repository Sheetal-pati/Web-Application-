<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Allot Room(s)" />
        <asp:Button ID="Button2" runat="server" Text="Cancel Booking" />
        <asp:Button ID="Button3" runat="server" Text="Edit Details" />
    </div>
    </form>
</body>
</html>
