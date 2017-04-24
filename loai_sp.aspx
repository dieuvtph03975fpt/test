<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_loai_sp" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="ma_loai_sp" HeaderText="ma_loai_sp" ReadOnly="True" SortExpression="ma_loai_sp" />
                <asp:BoundField DataField="ten_loai_sp" HeaderText="ten_loai_sp" SortExpression="ten_loai_sp" />
                <asp:BoundField DataField="ma_loai_sp_cha" HeaderText="ma_loai_sp_cha" SortExpression="ma_loai_sp_cha" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [loai_sp] WHERE [ma_loai_sp] = @ma_loai_sp" InsertCommand="INSERT INTO [loai_sp] ([ma_loai_sp], [ten_loai_sp], [ma_loai_sp_cha]) VALUES (@ma_loai_sp, @ten_loai_sp, @ma_loai_sp_cha)" SelectCommand="SELECT [ma_loai_sp], [ten_loai_sp], [ma_loai_sp_cha] FROM [loai_sp]" UpdateCommand="UPDATE [loai_sp] SET [ten_loai_sp] = @ten_loai_sp, [ma_loai_sp_cha] = @ma_loai_sp_cha WHERE [ma_loai_sp] = @ma_loai_sp">
            <DeleteParameters>
                <asp:Parameter Name="ma_loai_sp" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ma_loai_sp" Type="Int32" />
                <asp:Parameter Name="ten_loai_sp" Type="String" />
                <asp:Parameter Name="ma_loai_sp_cha" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten_loai_sp" Type="String" />
                <asp:Parameter Name="ma_loai_sp_cha" Type="Int32" />
                <asp:Parameter Name="ma_loai_sp" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>