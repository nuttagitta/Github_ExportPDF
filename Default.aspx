<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExportPDF2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TableTest] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TableTest] ([Id], [Name]) VALUES (@Id, @Name)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [Id], [Name] FROM [TableTest]" UpdateCommand="UPDATE [TableTest] SET [Name] = @Name WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
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
            <div>
                <asp:Button ID="btnExport" runat="server" Text="Export to PDF" OnClick="btnExport_Click" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-ExportPDF2-20201126030624ConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Id], [Name], [Address], [Monthly water bill], [Date of readings], [Pay at the branch up to], [Pay agent no more than]) VALUES (@Id, @Name, @Address, @Monthly_water_bill, @Date_of_readings, @Pay_at_the_branch_up_to, @Pay_agent_no_more_than)" ProviderName="<%$ ConnectionStrings:aspnet-ExportPDF2-20201126030624ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Address], [Monthly water bill] AS Monthly_water_bill, [Date of readings] AS Date_of_readings, [Pay at the branch up to] AS Pay_at_the_branch_up_to, [Pay agent no more than] AS Pay_agent_no_more_than FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Address] = @Address, [Monthly water bill] = @Monthly_water_bill, [Date of readings] = @Date_of_readings, [Pay at the branch up to] = @Pay_at_the_branch_up_to, [Pay agent no more than] = @Pay_agent_no_more_than WHERE [Id] = @Id">
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
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
