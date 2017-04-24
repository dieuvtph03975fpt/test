<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="wap">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_kh" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="ma_kh" HeaderText="ma_kh" ReadOnly="True" SortExpression="ma_kh" />
                <asp:BoundField DataField="ten_kh" HeaderText="ten_kh" SortExpression="ten_kh" />
                <asp:BoundField DataField="sdt_kh" HeaderText="sdt_kh" SortExpression="sdt_kh" />
                <asp:BoundField DataField="email_kh" HeaderText="email_kh" SortExpression="email_kh" />
                <asp:BoundField DataField="dia_chi_kh" HeaderText="dia_chi_kh" SortExpression="dia_chi_kh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [ma_kh] = @ma_kh" InsertCommand="INSERT INTO [khach_hang] ([ma_kh], [ten_kh], [sdt_kh], [email_kh], [dia_chi_kh]) VALUES (@ma_kh, @ten_kh, @sdt_kh, @email_kh, @dia_chi_kh)" SelectCommand="SELECT [ma_kh], [ten_kh], [sdt_kh], [email_kh], [dia_chi_kh] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ten_kh] = @ten_kh, [sdt_kh] = @sdt_kh, [email_kh] = @email_kh, [dia_chi_kh] = @dia_chi_kh WHERE [ma_kh] = @ma_kh">
            <DeleteParameters>
                <asp:Parameter Name="ma_kh" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ma_kh" Type="Int32" />
                <asp:Parameter Name="ten_kh" Type="String" />
                <asp:Parameter Name="sdt_kh" Type="Int32" />
                <asp:Parameter Name="email_kh" Type="String" />
                <asp:Parameter Name="dia_chi_kh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten_kh" Type="String" />
                <asp:Parameter Name="sdt_kh" Type="Int32" />
                <asp:Parameter Name="email_kh" Type="String" />
                <asp:Parameter Name="dia_chi_kh" Type="String" />
                <asp:Parameter Name="ma_kh" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>