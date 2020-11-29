<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ExportPDF2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CheckBoxField DataField="EmailConfirmed" HeaderText="EmailConfirmed" SortExpression="EmailConfirmed" />
                <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                <asp:BoundField DataField="SecurityStamp" HeaderText="SecurityStamp" SortExpression="SecurityStamp" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:CheckBoxField DataField="PhoneNumberConfirmed" HeaderText="PhoneNumberConfirmed" SortExpression="PhoneNumberConfirmed" />
                <asp:CheckBoxField DataField="TwoFactorEnabled" HeaderText="TwoFactorEnabled" SortExpression="TwoFactorEnabled" />
                <asp:BoundField DataField="LockoutEndDateUtc" HeaderText="LockoutEndDateUtc" SortExpression="LockoutEndDateUtc" />
                <asp:CheckBoxField DataField="LockoutEnabled" HeaderText="LockoutEnabled" SortExpression="LockoutEnabled" />
                <asp:BoundField DataField="AccessFailedCount" HeaderText="AccessFailedCount" SortExpression="AccessFailedCount" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetUsers]"></asp:SqlDataSource>
    </h2>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Monthly_water_bill" HeaderText="Monthly_water_bill" SortExpression="Monthly_water_bill" />
                <asp:BoundField DataField="Date_of_readings" HeaderText="Date_of_readings" SortExpression="Date_of_readings" />
                <asp:BoundField DataField="Pay_at_the_branch_up_to" HeaderText="Pay_at_the_branch_up_to" SortExpression="Pay_at_the_branch_up_to" />
                <asp:BoundField DataField="Pay_agent_no_more_than" HeaderText="Pay_agent_no_more_than" SortExpression="Pay_agent_no_more_than" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Id], [Name], [Address], [Monthly water bill], [Date of readings], [Pay at the branch up to], [Pay agent no more than]) VALUES (@Id, @Name, @Address, @Monthly_water_bill, @Date_of_readings, @Pay_at_the_branch_up_to, @Pay_agent_no_more_than)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Address], [Monthly water bill] AS Monthly_water_bill, [Date of readings] AS Date_of_readings, [Pay at the branch up to] AS Pay_at_the_branch_up_to, [Pay agent no more than] AS Pay_agent_no_more_than FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Address] = @Address, [Monthly water bill] = @Monthly_water_bill, [Date of readings] = @Date_of_readings, [Pay at the branch up to] = @Pay_at_the_branch_up_to, [Pay agent no more than] = @Pay_agent_no_more_than WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Monthly_water_bill" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Date_of_readings" />
                <asp:Parameter DbType="Date" Name="Pay_at_the_branch_up_to" />
                <asp:Parameter DbType="Date" Name="Pay_agent_no_more_than" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Monthly_water_bill" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="Date_of_readings" />
                <asp:Parameter DbType="Date" Name="Pay_at_the_branch_up_to" />
                <asp:Parameter DbType="Date" Name="Pay_agent_no_more_than" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <h3>&nbsp;</h3>
    </asp:Content>
