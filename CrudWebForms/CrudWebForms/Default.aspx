<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SuiteWorksExam._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDbContext %>" SelectCommand="SELECT [Student_FirstName], [Student_LastName], [Course], [Id] FROM [Students]"></asp:SqlDataSource>
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="List Of Students"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="486px" AutoGenerateColumns="False" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id">
                <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="Student_FirstName" HeaderText="Student_FirstName" SortExpression="Student_FirstName" />
                <asp:BoundField DataField="Student_LastName" HeaderText="Student_LastName" SortExpression="Student_LastName" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
            </Columns>
            <FooterStyle BackColor="#3366FF" />
            <HeaderStyle BackColor="#3399FF" />
        </asp:GridView>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
