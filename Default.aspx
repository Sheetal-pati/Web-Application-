<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}
header {
  background-color: #666;
  padding: 20px;
  text-align: center;
  font-size: 35px;
  color: white;
}
nav {
  float: left;
  width:10%;
  height:2000px;
  background: #ccc;
  padding: 20px;
}
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
}
section:after {
  content: "";
  display: table;
  clear: both;
}

</style>
</head>
<body>

         <form id="form1" runat="server">
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">+ADD NEW</asp:LinkButton>
             <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"  placeholder="Search" AutoPostBack="true"></asp:TextBox>
<hr />
<asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging = "gvCustomers_PageIndexChanging" EmptyDataText="No such records Found" OnRowCommand="gvCustomers_RowCommand">
    <Columns>
         <asp:BoundField DataField="appName" HeaderText="appName" ItemStyle-Width="150" />
         <asp:BoundField DataField="desg" HeaderText="desg" ItemStyle-Width="150" />
         <asp:BoundField DataField="empId" HeaderText="empId" ItemStyle-Width="150" />
         <asp:BoundField DataField="org" HeaderText="org" ItemStyle-Width="150" />
         <asp:BoundField DataField="contact" HeaderText="contact" ItemStyle-Width="150" />
         <asp:BoundField DataField="email" HeaderText="email" ItemStyle-Width="150" />
         <asp:BoundField DataField="isSelf" HeaderText="isSelf" ItemStyle-Width="150" />
          <asp:BoundField DataField="purpose" HeaderText="purpose" ItemStyle-Width="150" />
         <asp:BoundField DataField="dateArrival" HeaderText="dateArrival" ItemStyle-Width="150" />
         <asp:BoundField DataField="dateDep" HeaderText="dateDep" ItemStyle-Width="150" />
         <asp:BoundField DataField="noRooms" HeaderText="noRooms" ItemStyle-Width="150" />
         <asp:BoundField DataField="idProof" HeaderText="idProof" ItemStyle-Width="150" />
         <asp:BoundField DataField="bookDt" HeaderText="bookDt" ItemStyle-Width="150" />
         <asp:BoundField DataField="ReqNo" HeaderText="ReqNo" ItemStyle-Width="150" />
         <asp:BoundField DataField="payBy" HeaderText="payBy" ItemStyle-Width="150" />
         <asp:BoundField DataField="bookRemarks" HeaderText="bookRemarks" ItemStyle-Width="150" />
         <asp:BoundField DataField="isApproved" HeaderText="isApproved" ItemStyle-Width="150" />
         <asp:BoundField DataField="approvedBy" HeaderText="approvedBy" ItemStyle-Width="150" />
         <asp:BoundField DataField="isCheckedin" HeaderText="isCheckedin" ItemStyle-Width="150" />
         <asp:BoundField DataField="isCheckedout" HeaderText="isCheckedout" ItemStyle-Width="150" />
         <asp:BoundField DataField="cancelRemarks" HeaderText="cancelRemarks" ItemStyle-Width="150" />
        <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit" runat="server" Width="60" Text="Edit" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField> 
    </Columns>
</asp:GridView>
    </form>  
</body>
</html>
