<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_hd" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="ma_hd" HeaderText="ma_hd" ReadOnly="True" SortExpression="ma_hd" />
                <asp:BoundField DataField="ma_kh" HeaderText="ma_kh" SortExpression="ma_kh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [ma_hd] = @ma_hd" InsertCommand="INSERT INTO [hoa_don] ([ma_hd], [ma_kh]) VALUES (@ma_hd, @ma_kh)" SelectCommand="SELECT [ma_hd], [ma_kh] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [ma_kh] = @ma_kh WHERE [ma_hd] = @ma_hd">
            <DeleteParameters>
                <asp:Parameter Name="ma_hd" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ma_hd" Type="Int32" />
                <asp:Parameter Name="ma_kh" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ma_kh" Type="Int32" />
                <asp:Parameter Name="ma_hd" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>