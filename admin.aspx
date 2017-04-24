<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <ul id="sub_menu">
            <li><a id="A1" runat="server" href="~/san_pham.aspx">Sản phẩm</a></li>
            <li><a id="A2" runat="server" href="~/loai_sp.aspx">Loại sản phẩm</a></li>
            <li><a id="A3" runat="server" href="~/khach_hang.aspx">Khách hàng</a></li>
            <li><a id="A4" runat="server" href="~/hoa_don.aspx">Hóa đơn</a></li>
            <li><a id="A5" runat="server" href="~/chi_tiet_hd.aspx">Chi tiết hóa đơn</a></li>
        </ul>
    </div>
    
</asp:Content>