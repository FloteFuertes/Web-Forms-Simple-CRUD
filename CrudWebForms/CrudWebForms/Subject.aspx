<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="SuiteWorksExam.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"rel="stylesheet" type="text/css" />
             <script type="text/javascript">
                 function ShowPopup(message) {
                     $(function () {
                         $("#dialog").html(message);
                         $("#dialog").dialog({
                             title: "jQuery Dialog Popup",
                             buttons: {
                                 Close: function () {
                                     $(this).dialog('close');
                                 }
                             },
                             modal: true
                         });
                     });
                 };
              </script>
                <div id="dialog" style="display: none">
                </div>

    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" class="nav-justified" style="width: 57%">
            <tr>
                <td style="width: 166px; height: 34px;">Search Student Id<br />
                </td>
                <td style="height: 34px; width: 11px">:</td>
                <td class="modal-sm" style="width: 286px; height: 34px;">
                    <asp:TextBox ID="txtid" runat="server" Width="132px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="Student Id Is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td style="height: 34px"></td>
                <td style="width: 124px; height: 34px;">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" Width="101px" OnClick="btnSearch_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 26px;">Student Name </td>
                <td style="height: 26px; width: 11px">:</td>
                <td class="modal-sm" style="width: 286px; height: 26px;">
                    <asp:Label ID="lblStudentName" runat="server"></asp:Label>
                </td>
                <td style="height: 26px"></td>
                <td style="width: 124px; height: 26px;">Course </td>
                <td style="width: 13px">:</td>
                <td style="height: 26px">
                    <asp:Label ID="lblCourse" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 38px;">Instructor </td>
                <td style="width: 11px">:</td>
                <td class="modal-sm" style="width: 286px; height: 38px;">
                    <asp:Label ID="lblInstructor" runat="server"></asp:Label>
                </td>
                <td></td>
                <td>Room No </td>
                <td style="width: 13px">:</td>
                <td>
                    <asp:Label ID="lblroomno" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">Subject </td>
                <td style="width: 11px">:</td>
                <td class="modal-sm" style="width: 286px">
                    <asp:DropDownList ID="ddsubject" runat="server" Height="18px" Width="161px" AutoPostBack="True" OnSelectedIndexChanged="ddsubject_SelectedIndexChanged">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Filipino</asp:ListItem>
                        <asp:ListItem>Math</asp:ListItem>
                        <asp:ListItem>Calculus</asp:ListItem>
                        <asp:ListItem>IT-111</asp:ListItem>
                        <asp:ListItem>IT-112</asp:ListItem>
                        <asp:ListItem>Philosophy</asp:ListItem>
                        <asp:ListItem>Robotics</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 41px; width: 166px">Subject Time From </td>
                <td style="width: 11px">:</td>
                <td style="height: 41px; width: 286px">
                    <asp:DropDownList ID="ddfrom" runat="server" Height="18px" Width="161px">
                        <asp:ListItem>Select Time</asp:ListItem>
                        <asp:ListItem>7:00</asp:ListItem>
                        <asp:ListItem>7:30</asp:ListItem>
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem>8:30</asp:ListItem>
                        <asp:ListItem>9:00</asp:ListItem>
                        <asp:ListItem>9:30</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>10:30</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>11:30</asp:ListItem>
                        <asp:ListItem>13:00</asp:ListItem>
                        <asp:ListItem>15:00</asp:ListItem>
                        <asp:ListItem>16:00</asp:ListItem>
                        <asp:ListItem>18:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 35px;">Subject Time To </td>
                <td style="width: 11px">:</td>
                <td class="modal-sm" style="width: 286px; height: 35px;">
                    <asp:DropDownList ID="ddTo" runat="server" Height="18px" Width="161px">
                        <asp:ListItem>Select Time</asp:ListItem>
                        <asp:ListItem>7:00</asp:ListItem>
                        <asp:ListItem>7:30</asp:ListItem>
                        <asp:ListItem>8:00</asp:ListItem>
                        <asp:ListItem>8:30</asp:ListItem>
                        <asp:ListItem>9:00</asp:ListItem>
                        <asp:ListItem>9:30</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>10:30</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>11:30</asp:ListItem>
                        <asp:ListItem>13:00</asp:ListItem>
                        <asp:ListItem>15:00</asp:ListItem>
                        <asp:ListItem>16:00</asp:ListItem>
                        <asp:ListItem>18:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 166px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 166px">&nbsp;</td>
                <td style="width: 11px">
                    &nbsp;</td>
                <td style="width: 286px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" Width="94px" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        &nbsp;</p>
    

</asp:Content>
