<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyNoGameProgramCenterColumn.ascx.cs" Inherits="STG.SRP.Controls.MyNoGameProgramCenterColumn" %>
<%@ Register Src="~/Controls/SimpleLoggingControl.ascx" TagPrefix="uc1" TagName="SimpleLoggingControl" %>



<center><asp:Image ID="imgAvatar" runat="server"  width="160px"/></center>

<uc1:SimpleLoggingControl runat="server" ID="SimpleLoggingControl" />

<br />
<asp:Label ID="lblSponsor" runat="server" Text="Label"></asp:Label>
<hr />
<asp:Label ID="lblFooter" runat="server" Text="Label"></asp:Label>