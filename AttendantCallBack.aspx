<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAttendant.Master" AutoEventWireup="true" CodeBehind="AttendantCallBack.aspx.cs" Inherits="AkaarInstitute.AttendantCallBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 205px;
        }
        .auto-style2 {
            width: 303px;
        }
        .auto-style3 {
            width: 201px;
        }
        .auto-style4 {
            width: 599px;
        }
        .auto-style5 {
            width: 275px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">CALL BACK</h1>
            <hr class="w-25 mx-auto" />
        </div>

        <div class="container mb-5">
            <form id="Form1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="295px" Width="1255px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Caller ID">
                                <ItemTemplate>
                                    <asp:Label ID="CallerID" runat="server" Text='<%#Bind("CallerID") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Caller Name">
                                <ItemTemplate>
                                    <asp:Label ID="CNLab" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="CallerName" runat="server" Text='<%#Bind("Name") %>' MaxLength="30"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Contact">
                                <ItemTemplate>
                                    <asp:Label ID="Contact" runat="server" Text='<%#Bind("Contact") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Date" runat="server" Text='<%#Bind("Call_Date") %>'></asp:Label>
                                </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Reason">
                                <ItemTemplate>
                                    <asp:Label ID="ReasonLab" runat="server" Text='<%#Bind("Reason") %>'></asp:Label>
                                </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Reason" runat="server" Text='<%#Bind("Reason") %>' MaxLength="200"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="EmailLab" runat="server" Text='<%#Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Email" runat="server" Text='<%#Bind("Email") %>' MaxLength="320"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="AddrLab" runat="server" Text='<%#Bind("Address") %>'></asp:Label>
                                </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Addr" runat="server" Text='<%#Bind("Address") %>' MaxLength="100"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="bEdit" ImageUrl="~/Source/img/Icon/edit.png" Height="20px" CommandName="Edit" ToolTip="Edit Details" runat="server" />
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
    </section>
</asp:Content>
