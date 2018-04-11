<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VendorList.aspx.cs" Inherits="WebUI.VendorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <table>
<tr>
<td colspan="2">
<asp:Button ID ="btnVendorAdd" runat = "server" Text ="AddVendor"
         OnClick="btnVendorAdd_Click" />
</td>
</tr>

<tr>
        <td>
                                            <asp:GridView ID="grdVendorList"  runat="server" AutoGenerateColumns ="false" OnRowCommand="grdVendorList_RowCommand"
                                                 CellPadding="4" ForeColor="#333333" GridLines="None" Width="934px"
                                                    >
                                                 <columns>
                                                 <asp:BoundField DataField="VendorId" Visible="false" />
                                                 <asp:BoundField DataField="Name" Visible="true" HeaderText="Name" />
                                                 <asp:BoundField DataField="Address" Visible="true" HeaderText="Address" />
                                                 <asp:BoundField DataField="ContactNo" Visible="true" HeaderText="ContactNo"/>
                                                 <asp:BoundField DataField="EmailId" Visible="true" HeaderText="EmailId" />
                                                 <asp:BoundField DataField="State" Visible="true" HeaderText="State" />
                                                 <asp:BoundField DataField="City" Visible="true" HeaderText="City" />
                                                 <asp:BoundField DataField="District" Visible="true" HeaderText="District"/>
                                                 <asp:BoundField DataField="Country" Visible="true" HeaderText="Country" />
                                                 <asp:BoundField DataField="ActiveState" Visible="true" HeaderText="ActiveState" />
                                                 <asp:BoundField DataField="DateOfBirth" Visible="true" HeaderText="DateOfBirth" />
                                                 <asp:TemplateField HeaderText="Edit">
                                                      <ItemTemplate>
                                                         <asp:LinkButton ID="VendorEdit" Text="Edit" PostBackUrl='<%#String.Format("VendorAddEdit.aspx?VendorId={0}",Eval("VendorId")) %>'
                                                                         runat="server" CommandName="VendorcmdEdit" CommandArgument='<%#Eval ("VendorId") %>'></asp:LinkButton>
                                                                         </ItemTemplate>
                                                                      </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="Delete">
                                                        <ItemTemplate>
                                                             <asp:LinkButton ID="VendorDelete" Text="Delete"
                                                                             runat="server" CommandName="VendorCmdDelete" CommandArgument='<%# Eval("VendorId") %>' OnClientClick="return confirm('Are u Sure To Delete This Record?')"></asp:LinkButton>
                                                                           </ItemTemplate>
                                                                        </asp:TemplateField>
                                                    <asp:TemplateField HeaderText ="Active">
                                                    <ItemTemplate> 
                                                    <asp:CheckBox ID="VendorActive" Text="Active" runat ="server" />
                                                    </ItemTemplate>

                                                    </asp:TemplateField>
                                                                </columns>
                                                                <HeaderStyle BackColor="245252" ForeColor="#32E23F" />

                                                 </asp:GridView>
        </td>
  </tr>
</table>
</asp:Content>
