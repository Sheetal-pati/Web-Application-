<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
    </form>
</body>
</html>
