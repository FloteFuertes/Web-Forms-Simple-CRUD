<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="SuiteWorksExam.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Create Student"></asp:Label>
    </p>
    <p>
        <br />
    </p>
        <table style="width: 60%; height: 215px;">
            <tr>
                <td style="width: 118px; height: 37px">First Name :</td>
                <td style="width: 784px; height: 37px">
                    <asp:TextBox ID="txtname" runat="server" Height="29px" style="margin-bottom: 18" Width="438px"></asp:TextBox>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Alpha only and first letter in capital  " ForeColor="#CC0000" ValidationExpression="^[A-Z]+[a-zA-Z&quot;&quot;'\s-]*$"></asp:RegularExpressionValidator>
                    <br />
                   
                    <asp:RequiredFieldValidator ID="reqfname" runat="server" ErrorMessage="Student Name is Required" ControlToValidate="txtname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 42px">Last Name :</td>
                <td style="width: 784px; height: 42px">
                    <asp:TextBox ID="txtlname" runat="server" Height="29px" style="margin-bottom: 18" Width="438px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Alpha only and first letter in capital  " ForeColor="#CC0000" ValidationExpression="^[A-Z]+[a-zA-Z&quot;&quot;'\s-]*$"></asp:RegularExpressionValidator>
                    <br />


                    <asp:RequiredFieldValidator ID="reqlname" runat="server" ErrorMessage="Student Last Name is Required" ControlToValidate="txtlname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 59px">Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td style="width: 784px; height: 59px">
                    <asp:TextBox ID="txtcourse" runat="server" Height="29px" style="margin-bottom: 18" Width="438px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcourse" ErrorMessage="Invalid Character" ForeColor="#CC0000" ValidationExpression="^[A-Z]+[a-zA-Z0-9&quot;&quot;'\s-]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="reqcourse" runat="server" ErrorMessage="Course is Required" ControlToValidate="txtcourse" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 9px"></td>
            
                <td style="width: 784px; height: 9px">
                </td>
            </tr>
            <tr>
                <td style="width: 118px; height: 29px"></td>
            
                <td style="width: 784px; height: 29px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="112px" OnClick="btnSubmit_Click" CssClass="btn-success" />
                    <br />
                </td>
            </tr>
        </table>
     
    
</asp:Content>
