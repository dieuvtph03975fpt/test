<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_chi_tiet_hd" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="ma_chi_tiet_hd" HeaderText="ma_chi_tiet_hd" ReadOnly="True" SortExpression="ma_chi_tiet_hd" />
                <asp:BoundField DataField="ma_sp" HeaderText="ma_sp" SortExpression="ma_sp" />
                <asp:BoundField DataField="so_luong_ban" HeaderText="so_luong_ban" SortExpression="so_luong_ban" />
                <asp:BoundField DataField="ngay_ban" HeaderText="ngay_ban" SortExpression="ngay_ban" />
                <asp:BoundField DataField="ma_hd" HeaderText="ma_hd" SortExpression="ma_hd" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chi_tiet_hd] WHERE [ma_chi_tiet_hd] = @ma_chi_tiet_hd" InsertCommand="INSERT INTO [chi_tiet_hd] ([ma_chi_tiet_hd], [ma_sp], [so_luong_ban], [ngay_ban], [ma_hd]) VALUES (@ma_chi_tiet_hd, @ma_sp, @so_luong_ban, @ngay_ban, @ma_hd)" SelectCommand="SELECT [ma_chi_tiet_hd], [ma_sp], [so_luong_ban], [ngay_ban], [ma_hd] FROM [chi_tiet_hd]" UpdateCommand="UPDATE [chi_tiet_hd] SET [ma_sp] = @ma_sp, [so_luong_ban] = @so_luong_ban, [ngay_ban] = @ngay_ban, [ma_hd] = @ma_hd WHERE [ma_chi_tiet_hd] = @ma_chi_tiet_hd">
            <DeleteParameters>
                <asp:Parameter Name="ma_chi_tiet_hd" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ma_chi_tiet_hd" Type="Int32" />
                <asp:Parameter Name="ma_sp" Type="Int32" />
                <asp:Parameter Name="so_luong_ban" Type="Decimal" />
                <asp:Parameter Name="ngay_ban" Type="DateTime" />
                <asp:Parameter Name="ma_hd" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ma_sp" Type="Int32" />
                <asp:Parameter Name="so_luong_ban" Type="Decimal" />
                <asp:Parameter Name="ngay_ban" Type="DateTime" />
                <asp:Parameter Name="ma_hd" Type="Int32" />
                <asp:Parameter Name="ma_chi_tiet_hd" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>