<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="SuiteWorksExam.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" class="nav-justified" style="height: 202px">
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px; height: 20px">Search Student ID</td>
            <td class="modal-sm" style="width: 12px">:</td>
            <td style="height: 20px; width: 141px">
                <asp:TextBox ID="txtid" runat="server" Width="144px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="reqId" runat="server" ControlToValidate="txtid" ErrorMessage="Student Id is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="83px" />
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px"></td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">Student First Name</td>
            <td class="modal-sm" style="width: 15px">:</td>
            <td class="modal-sm" style="width: 546px">
                <asp:TextBox ID="txtfname" runat="server" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">Student Last Name</td>
            <td class="modal-sm" style="width: 15px">:</td>
            <td class="modal-sm" style="width: 546px">
                <asp:TextBox ID="txtlname" runat="server" OnTextChanged="txtlname_TextChanged" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">Course</td>
            <td class="modal-sm" style="width: 15px">:</td>
            <td class="modal-sm" style="width: 546px">
                <asp:TextBox ID="txtcourse" runat="server" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm" style="width: 15px">&nbsp;</td>
            <td class="modal-sm" style="width: 546px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px">&nbsp;</td>
            <td class="modal-sm" style="width: 12px">&nbsp;</td>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td></td>
            <td class="modal-sm" style="width: 546px">
                 
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" style="margin-left: 0px" Width="1000px" DataKeyNames="Id" OnRowDeleting="GridView1_RowDeleting1" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" ItemStyle-Width="70">
                        <HeaderStyle Width="100px" />
<ItemStyle Width="70px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="SubjectName" HeaderText="Subject" ItemStyle-Width="3560">
<ItemStyle Width="3560px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="InstructorName" HeaderText="Instructor Name" ItemStyle-Width="3360">
<ItemStyle Width="3360px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="SubjectTimeFrom" HeaderText="Time From" ItemStyle-Width="3160">
<ItemStyle Width="3160px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="SubjectTimeTo" HeaderText="Time To" ItemStyle-Width="3160"> 
<ItemStyle Width="3160px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="RoomNumber" HeaderText="Room No." ItemStyle-Width="1100"> 
<ItemStyle Width="1100px"></ItemStyle>
                        </asp:BoundField>
                        <asp:CommandField ShowEditButton="true" ShowCancelButton="true" ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>     
</asp:Content>
