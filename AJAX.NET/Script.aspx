<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Script.aspx.cs" Inherits="AJAX.NET.Script" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button2_Click"/>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>           
        </div>
    </form>
</body>
</html>
