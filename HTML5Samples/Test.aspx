<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="HTML5Samples.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
function HideMe() {
    __doPostback("Button1","");
    
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label><br/>
        <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label><br/>
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm to show Time" 
            onclick="btnConfirm_Click" />
            <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Button" OnClientClick="HideMe(); return false;"  />
            <input ID="btn" type="button" runat="server" value="Line one&#13;&#10;Line two&#13;&#10;Line three" style="text-align:center" />
        </asp:Panel>
        sounds
    </div>
    </form>
</body>
</html>
