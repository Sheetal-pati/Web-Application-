<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  line-height:1.6;
  background-image:url(pic.jpg);
  background-attachment:fixed;
  
}
#form1 {
    background-color:white;
    width:83%;
    height:100%;
    margin-left:100px;
    border:solid 1px;
        }


.topnav {
  overflow: hidden;
  background-color: #333;
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

.right {
    margin-top:-390px;
    margin-left:700px;
    
        }
        .left,.guesttable,.foot {
            margin-left:20px;
        }
.myTable { background-color:#eee;border-collapse:collapse;position:relative; margin-left:10px;}
.myTable th { background-color:#cfd5f9;color:black; }
.myTable td, .myTable th {padding:1px;border:1px solid #000; text-align:center;}
h3 {color:#3a54f2;
    margin-left:20px;
}
 .TextBoxc2,.TextBoxc3,.TextBoxc6 {
     width:150px;
        }
 .TextBoxc4 {
      width:50px;
        }
        .DropDownListc7 {
            width: 170px;
        }
         #FileUpload1,#DropDownList1,#dateArrival,#dateDep,#DropDownList4,#DropDownList5 {
             margin-bottom:20px;
         }

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topnav">
  <a href="#home">Home</a>
  <a href="#news">CSIR-IMMT</a>
  <a href="#contact">Online-Booking</a>
  <a href="#about">Check Booking Status</a>
  <a href="#home">Feedback/Suggestion</a>
  <a href="#home">FAQS</a>
  <a href="#home">Contact Us</a>
</div>
        <h2  style="margin-left:20px">Guest House Accomodation Request</h2><br />
        <h3 style="margin-top:-20px">Applicant Details</h3><br />
        <div class="left">
        <asp:HiddenField ID="appId" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Organisation"></asp:Label><br />
            <asp:DropDownList ID="DropDownList16" CssClass="DropDownListc7" runat="server">
                 <asp:listitem text="Select Organization" value="1"></asp:listitem>
                 <asp:listitem text="AMPRI(Advanced Materials and Processes Research Institute),Bhopal" value="2"></asp:listitem>
                 <asp:listitem text="CBRI(Central Building Research Institute),ROORKEE" value="3"></asp:listitem>
                 <asp:listitem text="CCMB(Center for Cellular & Molecular Biology), HYDERABAD" value="4"></asp:listitem>
                 <asp:listitem text="CDRI(Center Drug Research Institute),LUCKNOW" value="5"></asp:listitem>
                 <asp:listitem text="CECRI(Central Electrochemical Research Institute), KARAIKUDI" value="6"></asp:listitem>
                 <asp:listitem text="CEERI(Central Electronics Engineering Research Institute), PILANI" value="7"></asp:listitem>
                 <asp:listitem text="CFTRI(Central Food Technological Research Institute), MYSORE" value="8"></asp:listitem>
                 <asp:listitem text="CGCRI(Central Glass & Ceramic Research Institute), KOLKATA" value="9"></asp:listitem>
                 <asp:listitem text="CIMAP(Central Institute of Medicinal & Aromatic Plants), LUCKNOW" value="10"></asp:listitem>
                 <asp:listitem text="CIMFR(Central Institute of Mining and Fuel Research), DHANBAD" value="11"></asp:listitem>
                 <asp:listitem text="CLRI(Central Leather Researcch Institute), CHENNAI" value="12"></asp:listitem>
                 <asp:listitem text="CMERI(Central mechanical engineering Research Institute), DURGAPUR" value="13"></asp:listitem>
                 <asp:listitem text="C-MMACS(Center for Mathematical Modelling & Computer Simulation), BANGALORE" value="14"></asp:listitem>
                 <asp:listitem text="CRRI(Central Road Research Institute), NEW DELHI" value="15"></asp:listitem>
                 <asp:listitem text="CSIO(Central Scientific Instruments Organisation), CHANDIGARH" value="16"></asp:listitem>
                 <asp:listitem text="CSIR(Council of Scientific and Industrial Research), NEW DELHI" value="17"></asp:listitem>
                 <asp:listitem text="CSIR-HRDC(Human Resource Development Center), GHAZIABAD" value="18"></asp:listitem>
                 <asp:listitem text="CSIR-HRDG(Human Resource Development Group), NEW DELHI" value="19"></asp:listitem>
                 <asp:listitem text="CSMCRI(Central Salt & Marine Chemicals Research Institute), BHAVNAGAR" value="20"></asp:listitem>
                 <asp:listitem text="IGIB(Institute of Genomics and Integrative Biology), DELHI" value="22"></asp:listitem>
                 <asp:listitem text="IHBT(Institute of Himalayan Bioresource Technology, PALAMPUR" value="23"></asp:listitem>
                 <asp:listitem text="IICB(Indian Institute of Chemical Biology), KOLKATA" value="24"></asp:listitem>
                 <asp:listitem text="IICT(Indian Institute of Chemical Technology), HYDERABAD" value="25"></asp:listitem>
                 <asp:listitem text="IIIM(Indian Institute of Integrative Medicine), JAMMU" value="26"></asp:listitem>
                 <asp:listitem text="IIP(Indian Institute of Petroleum), DEHRADUN" value="27"></asp:listitem>
                  <asp:listitem text="IITR(Indian Institute of Toxicology Research), LUCKNOW" value="28"></asp:listitem>
                 <asp:listitem text="IMMT(Institute of Minerals and Materials Technology), BHUBANESWAR" value="29"></asp:listitem>
                 <asp:listitem text="IMT(Institute of Microbial Technology), CHANDIGARH" value="30"></asp:listitem>
                 <asp:listitem text="NAL(National Aerospace Laboratory), BANGALORE " value="31"></asp:listitem>
                 <asp:listitem text="NBRI(National Botanical Research Institute), Lucknow" value="32"></asp:listitem>
                 <asp:listitem text="NCL(National Chemical Laboratory), PUNE" value="33"></asp:listitem>
                  <asp:listitem text="NEERI(National Environment Engineering Rsearch Institute), NAGPUR" value="34"></asp:listitem>
                 <asp:listitem text="NEIST(North-East Institute of Science and Technology), JORHAT" value="35"></asp:listitem>
                 <asp:listitem text="NGRI(National Geophysical Research Institute), HYDERABAD" value="36"></asp:listitem>
                 <asp:listitem text="NIO(National Institute of Oceanography), GOA" value="37"></asp:listitem>
                 <asp:listitem text="NISCAIR(National Institute of Science Communication & Information Resources), NEW DELHI" value="38"></asp:listitem>
                 <asp:listitem text="NIST(National Institute for interdisciplinary Science & Technology), Thiruvananthapuram" value="39"></asp:listitem>
                  <asp:listitem text="NISTADS(National Institute of Science, Technology & Developmental studies), NEW DELHI" value="40"></asp:listitem>
                 <asp:listitem text="NML(National Metallurgical Laboratory), JAMSHEDPUR" value="41"></asp:listitem>
                 <asp:listitem text="NPL(National Physical Laboratory), New Delhi" value="42"></asp:listitem>
                 <asp:listitem text="SERC(Structural Engineering Research Center), CHENNAI" value="43"></asp:listitem>
            </asp:DropDownList><br />
        <asp:Label ID="Label3" runat="server" Text="Designation"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Employee ID"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Contact/Mobile No."></asp:Label><br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Official Email Address"></asp:Label><br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
            </div>
        <div class="right">
            <asp:Label ID="Label7" runat="server" Text="Scanned copy of Office ID"></asp:Label><br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Label ID="Label8" runat="server" Text="Purpose of visit"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" >
                 <asp:listitem text="Select Purpose" value="1"></asp:listitem>
                 <asp:listitem text="PERSONAL" value="2"></asp:listitem>
                 <asp:listitem text="OFFICIAL" value="3"></asp:listitem>
                 <asp:listitem text="LTC" value="4"></asp:listitem>
            </asp:DropDownList><br />
            <asp:Label ID="Label9" runat="server" Text="Date of Arrival"></asp:Label><br />
            <asp:TextBox ID="dateArrival" runat="server" TextMode="Date"></asp:TextBox>
            <asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:listitem text="Select Arrival Time" value="1"></asp:listitem>
                 <asp:listitem text="00:00" value="2"></asp:listitem>
                 <asp:listitem text="01:00" value="3"></asp:listitem>
                 <asp:listitem text="02:00" value="4"></asp:listitem>
                 <asp:listitem text="03:00" value="5"></asp:listitem>
                 <asp:listitem text="04:00" value="6"></asp:listitem>
                 <asp:listitem text="05:00" value="7"></asp:listitem>
                 <asp:listitem text="06:00" value="8"></asp:listitem>
                 <asp:listitem text="07:00" value="9"></asp:listitem>
                 <asp:listitem text="08:00" value="10"></asp:listitem>
                 <asp:listitem text="09:00" value="11"></asp:listitem>
                 <asp:listitem text="10:00" value="12"></asp:listitem>
                 <asp:listitem text="11:00" value="13"></asp:listitem>
                 <asp:listitem text="12:00" value="14"></asp:listitem>
                 <asp:listitem text="13:00" value="15"></asp:listitem>
                 <asp:listitem text="14:00" value="16"></asp:listitem>
                 <asp:listitem text="15:00" value="17"></asp:listitem>
                 <asp:listitem text="16:00" value="18"></asp:listitem>
                 <asp:listitem text="17:00" value="19"></asp:listitem>
                 <asp:listitem text="18:00" value="20"></asp:listitem>
                 <asp:listitem text="19:00" value="21"></asp:listitem>
                 <asp:listitem text="20:00" value="22"></asp:listitem>
                 <asp:listitem text="21:00" value="23"></asp:listitem>
                 <asp:listitem text="22:00" value="24"></asp:listitem>
                 <asp:listitem text="23:00" value="25"></asp:listitem>
            </asp:DropDownList><br />
            <asp:Label ID="Label10" runat="server" Text="Date of Departure"></asp:Label><br />
            <asp:TextBox ID="dateDep" runat="server" TextMode="Date"></asp:TextBox>
            <asp:DropDownList ID="DropDownList3" runat="server">
                 <asp:listitem text="Select Departure Time" value="1"></asp:listitem>
                 <asp:listitem text="00:00" value="2"></asp:listitem>
                 <asp:listitem text="01:00" value="3"></asp:listitem>
                 <asp:listitem text="02:00" value="4"></asp:listitem>
                 <asp:listitem text="03:00" value="5"></asp:listitem>
                 <asp:listitem text="04:00" value="6"></asp:listitem>
                 <asp:listitem text="05:00" value="7"></asp:listitem>
                 <asp:listitem text="06:00" value="8"></asp:listitem>
                 <asp:listitem text="07:00" value="9"></asp:listitem>
                 <asp:listitem text="08:00" value="10"></asp:listitem>
                 <asp:listitem text="09:00" value="11"></asp:listitem>
                 <asp:listitem text="10:00" value="12"></asp:listitem>
                 <asp:listitem text="11:00" value="13"></asp:listitem>
                 <asp:listitem text="12:00" value="14"></asp:listitem>
                 <asp:listitem text="13:00" value="15"></asp:listitem>
                 <asp:listitem text="14:00" value="16"></asp:listitem>
                <asp:listitem text="15:00" value="17"></asp:listitem>
                <asp:listitem text="16:00" value="18"></asp:listitem>
                <asp:listitem text="17:00" value="19"></asp:listitem>
                <asp:listitem text="18:00" value="20"></asp:listitem>
                <asp:listitem text="19:00" value="21"></asp:listitem>
                <asp:listitem text="20:00" value="22"></asp:listitem>
                <asp:listitem text="21:00" value="23"></asp:listitem>
                <asp:listitem text="22:00" value="24"></asp:listitem>
                <asp:listitem text="23:00" value="25"></asp:listitem>
            </asp:DropDownList><br />
            <asp:Label ID="Label11" runat="server" Text="No. of rooms required"></asp:Label><br />
            <asp:DropDownList ID="DropDownList4" runat="server">
                  <asp:listitem text="(1)One" value="1"></asp:listitem>
                  <asp:listitem text="(2)Two" value="2"></asp:listitem>
                  <asp:listitem text="(3)Three" value="3"></asp:listitem>
                  <asp:listitem text="(4)Four" value="4"></asp:listitem>
                  <asp:listitem text="(5)Five" value="5"></asp:listitem>
                  <asp:listitem text="(6)Six" value="6"></asp:listitem>
            </asp:DropDownList><br />
            <asp:Label ID="Label12" runat="server" Text="Payment to be borne by"></asp:Label><br />
            <asp:DropDownList ID="DropDownList5" runat="server">
                  <asp:listitem text="APPLICANT" value="1"></asp:listitem>
                  <asp:listitem text="GUEST" value="2"></asp:listitem>
                  <asp:listitem text="IMMT A/C" value="3"></asp:listitem>
            </asp:DropDownList><br />

        </div>
        <h3>Guest Details</h3><br />
      <div class="guesttable">
            <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Label ID="Label13" runat="server" Text="Are you one of the guest?"></asp:Label><br />
        <table class="myTable">
           <tr>
            <th>Sl No.</th>
            <th>Guest Name</th>
            <th>Organization</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Contact</th>
            <th>Category</th>
            <th>Photo ID Proof number</th>
           </tr>
            <tr>
                <td>1.</td>
                <td>
                    <asp:TextBox ID="TextBox33" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox34" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox35" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="TextBox36" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox37" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="TextBox38" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox39" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
            <tr>
             <td>2.</td>
                <td>
                    <asp:TextBox ID="TextBox8" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox9" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox10" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList6" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox11" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList7" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox12" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
            <tr>
             <td>3.</td>
                <td>
                    <asp:TextBox ID="TextBox13" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox14" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox15" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList8" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox16" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList9" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox17" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
            <tr>
             <td>4.</td>
                <td>
                    <asp:TextBox ID="TextBox18" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox19" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox20" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList10" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox21" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList11" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox22" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
            <tr>
             <td>5.</td>
                <td>
                    <asp:TextBox ID="TextBox23" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox24" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox25" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList12" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox26" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList13" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox27" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
            <tr>
             <td>6.</td>
                <td>
                    <asp:TextBox ID="TextBox28" CssClass="TextBoxc2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox29" CssClass="TextBoxc3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="TextBox30" CssClass="TextBoxc4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList14" CssClass="DropDownListc5" runat="server">
                         <asp:listitem text=" " value="1"></asp:listitem>
                         <asp:listitem text="Male" value="2"></asp:listitem>
                         <asp:listitem text="Female" value="3"></asp:listitem>
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox31" CssClass="TextBoxc6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList15" CssClass="DropDownListc7" runat="server">
                    </asp:DropDownList></td>
                <td>
                    <asp:TextBox ID="TextBox32" CssClass="TextBoxc8" runat="server" placeholder="Voter-ID/Adhaar/PAN/DL/etc"></asp:TextBox></td>
             </tr>
        </table>
      </div>
          <div class="foot">
              <asp:Label ID="Label14" runat="server" Text="Remarks"></asp:Label><br />
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
            <asp:CheckBox ID="CheckBox2" runat="server" /> I Agree to the terms and conditions<br />
              <br />
              <asp:Button ID="Button2" runat="server" Text="UPDATE" OnClick="Button2_Click" />
          </div>    
    </form>
</body>
</html>

