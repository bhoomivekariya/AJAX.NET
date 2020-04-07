<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdown_Forward_backward.aspx.cs" Inherits="AJAX.NET.Dropdown_Forward_backward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <%--    to add history in the page for example dropdownlist--%>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="true" OnNavigate="ScriptManager1_Navigate" EnableSecureHistoryState="false"></asp:ScriptManager>
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                <ContentTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="Red">Red</asp:ListItem>
                        <asp:ListItem Value="Green">Green</asp:ListItem>
                        <asp:ListItem Value="Blue">Blue</asp:ListItem>
                    </asp:DropDownList>
                    </br>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
