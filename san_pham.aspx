<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_sp" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="don_vi_tinh_sp" HeaderText="don_vi_tinh_sp" SortExpression="don_vi_tinh_sp" />
                <asp:BoundField DataField="anh_sp" HeaderText="anh_sp" SortExpression="anh_sp" />
                <asp:BoundField DataField="mo_ta_sp" HeaderText="mo_ta_sp" SortExpression="mo_ta_sp" />
                <asp:BoundField DataField="so_luong_sp" HeaderText="so_luong_sp" SortExpression="so_luong_sp" />
                <asp:BoundField DataField="gia_sp" HeaderText="gia_sp" SortExpression="gia_sp" />
                <asp:BoundField DataField="ten_sp" HeaderText="ten_sp" SortExpression="ten_sp" />
                <asp:BoundField DataField="ma_loai_sp" HeaderText="ma_loai_sp" SortExpression="ma_loai_sp" />
                <asp:BoundField DataField="ma_sp" HeaderText="ma_sp" ReadOnly="True" SortExpression="ma_sp" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ma_sp] = @ma_sp" InsertCommand="INSERT INTO [san_pham] ([don_vi_tinh_sp], [anh_sp], [mo_ta_sp], [so_luong_sp], [gia_sp], [ten_sp], [ma_loai_sp], [ma_sp]) VALUES (@don_vi_tinh_sp, @anh_sp, @mo_ta_sp, @so_luong_sp, @gia_sp, @ten_sp, @ma_loai_sp, @ma_sp)" SelectCommand="SELECT [don_vi_tinh_sp], [anh_sp], [mo_ta_sp], [so_luong_sp], [gia_sp], [ten_sp], [ma_loai_sp], [ma_sp] FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [don_vi_tinh_sp] = @don_vi_tinh_sp, [anh_sp] = @anh_sp, [mo_ta_sp] = @mo_ta_sp, [so_luong_sp] = @so_luong_sp, [gia_sp] = @gia_sp, [ten_sp] = @ten_sp, [ma_loai_sp] = @ma_loai_sp WHERE [ma_sp] = @ma_sp">
            <DeleteParameters>
                <asp:Parameter Name="ma_sp" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="don_vi_tinh_sp" Type="String" />
                <asp:Parameter Name="anh_sp" Type="String" />
                <asp:Parameter Name="mo_ta_sp" Type="String" />
                <asp:Parameter Name="so_luong_sp" Type="Decimal" />
                <asp:Parameter Name="gia_sp" Type="Decimal" />
                <asp:Parameter Name="ten_sp" Type="String" />
                <asp:Parameter Name="ma_loai_sp" Type="Int32" />
                <asp:Parameter Name="ma_sp" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="don_vi_tinh_sp" Type="String" />
                <asp:Parameter Name="anh_sp" Type="String" />
                <asp:Parameter Name="mo_ta_sp" Type="String" />
                <asp:Parameter Name="so_luong_sp" Type="Decimal" />
                <asp:Parameter Name="gia_sp" Type="Decimal" />
                <asp:Parameter Name="ten_sp" Type="String" />
                <asp:Parameter Name="ma_loai_sp" Type="Int32" />
                <asp:Parameter Name="ma_sp" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>