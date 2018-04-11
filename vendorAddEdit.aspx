<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vendorAddEdit.aspx.cs" Inherits="WebUI.vendorAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table>

           <tr>
                <td>
                        <asp:HiddenField ID="hdnMsgId" runat="server"></asp:HiddenField>
                   
                </td>
           </tr>
          
            <tr>
                <td>
                    <asp:Label ID="lblDisplayMsg" runat="server" Text="DisplayMsg"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDisplayMsg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                  <td>
                        <asp:Label ID="lblMsg_Title" runat="server" Text="Msg_Title"></asp:Label>
                  </td>
                  <td>
                        <asp:TextBox ID="txtMsg_Title" runat="server"></asp:TextBox>
                  </td>
            </tr>
            <tr>
                   <td>
                            <asp:Label ID="lblFull_Message" runat="server" Text="Full_Message"></asp:Label>
                   </td>
                   <td>
                            <asp:TextBox ID="txtFull_Message" runat="server"></asp:TextBox>
                   </td>
            </tr>
            
</table>
        <asp:Button ID="btnVendorAdd" runat="server" Text="Add" OnClick = "btnVendorAdd_Click" />
        <asp:Button ID="btnVendorBack" runat="server" Text="Back" OnClick="btnVendorBack_Click" />
        <asp:Button ID="btnVendorUpdate" runat="server" Text="Update" OnClick="btnVendorUpdate_Click" />
</asp:Content>
