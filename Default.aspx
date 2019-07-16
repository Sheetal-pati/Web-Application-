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
 .headergrid 
 {
     background-color:darkblue;
     color:white;
        }
        p {
            margin-top:-20px;
            margin-left:20px;
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
 <h2  style="margin-left:20px">Enqiry/Room Allotment</h2><br />
             <p>Following are the list of Enquiries awaiting for Approval of GuestHouse I/C and Room Allotment.<br />Priority can be given to guests based on their category.<br />**Kindly allot rooms carefully after checking the availability and the category of Guests.</p>
              <asp:Button ID="Button1" runat="server" Text="Pending" style="margin-left:20px"/>
             <asp:Button ID="Button2" runat="server" Text="Approved" />
             <asp:Button ID="Button3" runat="server" Text="Cancelled" />
             <asp:Button ID="Button4" runat="server" Text="Rejected" />
             <asp:Button ID="LinkButton1" runat="server" Text="+ADD NEW" OnClick="LinkButton1_Click"/>
             <asp:TextBox ID="txtSearch" runat="server" onTextChanged="txtSearch_TextChanged" AutoCompleteType="Enabled"  placeholder="Search" AutoPostBack="true"></asp:TextBox>
<hr />
<asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true" HeaderStyle-CssClass="headergrid" OnPageIndexChanging = "gvCustomers_PageIndexChanging" EmptyDataText="No such records Found" OnRowCommand="gvCustomers_RowCommand">
   <rowstyle backcolor="#e4e5f2"  
           forecolor="black"
           />
     <Columns>
          <asp:BoundField  DataField="appId" HeaderText="appId" ItemStyle-Width="30" />
        <asp:BoundField DataField="ReqNo" HeaderText="REQ No" ItemStyle-Width="150" />
        <asp:BoundField DataField="appName" HeaderText="Applicant Name" ItemStyle-Width="150" />
         <asp:BoundField DataField="empId" HeaderText="empId" ItemStyle-Width="150" Visible="false" />
         <asp:TemplateField HeaderText="Designation/Organisation"   SortExpression="org">
<ItemTemplate>
    <b><asp:Label ID="Label1" runat="server" Text='<%#Eval("desg")%>' ></asp:Label></b><br />
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("org") %>'></asp:Label>
</ItemTemplate>
              </asp:TemplateField> 
         <asp:TemplateField HeaderText="Contact Details"   SortExpression="contact">
<ItemTemplate>
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("email")%>' ></asp:Label><br />
    <asp:Label ID="Label4" runat="server" Text='<%#Eval("contact") %>'></asp:Label>
</ItemTemplate>
              </asp:TemplateField> 
         <asp:BoundField DataField="isSelf" HeaderText="isSelf" ItemStyle-Width="150" Visible="false" />
          <asp:BoundField DataField="purpose" HeaderText="purpose" ItemStyle-Width="80" />
          <asp:TemplateField>
                         <HeaderTemplate>Arrival</HeaderTemplate>
                         <ItemTemplate>
                             <%#Class1.changedate( Eval("dateArrival").ToString()) %>
                         </ItemTemplate>
                     </asp:TemplateField>
          <asp:TemplateField>
                         <HeaderTemplate>Departure</HeaderTemplate>
                         <ItemTemplate>
                             <%#Class1.changedate( Eval("dateDep").ToString()) %>
                         </ItemTemplate>
                     </asp:TemplateField>
         <asp:BoundField DataField="noRooms" HeaderText="noRooms" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="idProof" HeaderText="idProof" ItemStyle-Width="150"  Visible="false" />
         <asp:BoundField DataField="bookDt" HeaderText="bookDt" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="payBy" HeaderText="payBy" ItemStyle-Width="150"  Visible="false" />
         <asp:BoundField DataField="bookRemarks" HeaderText="bookRemarks" ItemStyle-Width="150" Visible="false" />
         <asp:BoundField DataField="isApproved" HeaderText="isApproved" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="approvedBy" HeaderText="approvedBy" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="isCheckedin" HeaderText="isCheckedin" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="isCheckedout" HeaderText="isCheckedout" ItemStyle-Width="150"  Visible="false"/>
         <asp:BoundField DataField="cancelRemarks" HeaderText="cancelRemarks" ItemStyle-Width="150"  Visible="false"/>
        <asp:TemplateField HeaderText="Action">  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit" runat="server" Width="60" Text="Manage" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField> 
    </Columns>
</asp:GridView>
             <asp:GridView ID="gv_data" runat="server">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate></HeaderTemplate>
                         <ItemTemplate>
                             <%#Eval("email") %>
                         </ItemTemplate>
                     </asp:TemplateField>
                    
                 </Columns>
             </asp:GridView>
    </form>
</body>
</html>
