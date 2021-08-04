<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="CmnFees.aspx.cs" Inherits="AkaarInstitute.AdminFeesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 327px;
        }
        .auto-style2 {
            width: 328px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">FEES <asp:Label ID="Label2" runat="server" Text="MANAGEMENT"></asp:Label></h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BorderStyle="None" BorderWidth="1px" BackColor="White" BorderColor="#CCCCCC" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="293px" Width="1038px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Subject ID">
                                <ItemTemplate>
                                    <asp:Label ID="SubID" runat="server" Text='<%#Bind("SubjectID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Subject Name">
                                <ItemTemplate>
                                    <asp:Label ID="SubName" runat="server" Text='<%#Bind("SubjectName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Subject Fee">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("SubFee") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="SubFee" Text='<%#Bind("SubFee") %>' runat="server" MaxLength="6"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="bEdit" ImageUrl="~/Source/img/Icon/edit.png" Height="20px" CommandName="Edit" ToolTip="Edit Fee" runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ID="bSave" ImageUrl="~/Source/img/Icon/save.png" Height="20px" CommandName="Update" ToolTip="Save" runat="server" />
                                    <asp:ImageButton ID="bCancl" ImageUrl="~/Source/img/Icon/cancel.jpg" Height="20px" CommandName="Cancel" ToolTip="Cancel" runat="server" />
                                </EditItemTemplate>
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
                </form>
            </div>
        </div>
        <hr class="w-25 mx-auto" />
    </section>
</asp:Content>
