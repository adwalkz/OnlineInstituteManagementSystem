<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAttendant.Master" AutoEventWireup="true" CodeBehind="AttendantComplain.aspx.cs" Inherits="AkaarInstitute.AttendantComplain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 194px;
        }
        .auto-style7 {
            width: 170px;
            height: 32px;
        }
        .auto-style8 {
            width: 194px;
            height: 32px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style15 {
            width: 170px;
            height: 31px;
        }
        .auto-style16 {
            width: 194px;
            height: 31px;
        }
        .auto-style19 {
            height: 31px;
        }
        .auto-style20 {
            width: 202px;
        }
        .auto-style21 {
            width: 202px;
            height: 31px;
        }
        .auto-style22 {
            width: 202px;
            height: 32px;
        }
        .auto-style23 {
            width: 683px;
        }
        .auto-style24 {
            width: 683px;
            height: 31px;
        }
        .auto-style25 {
            width: 683px;
            height: 32px;
        }
        .auto-style26 {
            width: 181px;
        }
        .auto-style27 {
            width: 181px;
            height: 31px;
        }
        .auto-style28 {
            width: 181px;
            height: 32px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide mb-5">
            <h1 class="text-center pt-3">COMPLAINS</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="300px" Width="1036px">
                        <Columns>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" Text="Close?" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Done" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
