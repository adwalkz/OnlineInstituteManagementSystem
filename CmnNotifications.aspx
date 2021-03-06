<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAttendant.Master" AutoEventWireup="true" CodeBehind="CmnNotifications.aspx.cs" Inherits="AkaarInstitute.AttendantNotifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide mb-5">
            <h1 class="text-center pt-3">NOTIFICATIONS</h1>
            <hr class="w-25 mx-auto" />
            
            <div class="container mb-4">
                <form runat="server">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="293px" Width="1036px">
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
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
