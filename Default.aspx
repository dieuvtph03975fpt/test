<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div id="wap">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ma_sp" DataSourceID="SqlDataSource1">
        
            <ItemTemplate>
                <li class="listContent">
                    <ul id="ulContent" style="color:red;">
                        <li><asp:Image ID="anh_spLabel" runat="server" ImageUrl='<%# Eval("anh_sp") %>' Width="100%" Height="100px" /></li>
                        <li>
                            <h3><asp:Label ID="ten_spLabel" runat="server" Text='<%# Eval("ten_sp") %>' /></h3>
                        </li>
                        <li class="txt"><asp:Label ID="mo_ta_spLabel" runat="server" Text='<%# Eval("mo_ta_sp") %>' /></li>
                        <li><Strong> Giá: <asp:Label ID="gia_spLabel" runat="server" Text='<%# Eval("gia_sp") %>' /></Strong></li>
                    </ul>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ma_sp], [ma_loai_sp], [gia_sp], [ten_sp], [so_luong_sp], [mo_ta_sp], [don_vi_tinh_sp], [anh_sp] FROM [san_pham]"></asp:SqlDataSource>

    </div>
    
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
</asp:Content>