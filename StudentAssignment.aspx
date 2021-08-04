<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="StudentAssignment.aspx.cs" Inherits="AkaarInstitute.StudentAssignmentPagr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide mb-5">
            <h1 class="text-center pt-3">ASSIGNMENTS</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="294px" Width="1036px">
                        <Columns>
                            <asp:TemplateField HeaderText="Assignment ID">
                                <ItemTemplate>
                                    <asp:Label ID="AssignmentID" runat="server" Text='<%#Bind("AssignmentID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Teacher ID">
                                <ItemTemplate>
                                        <asp:Label ID="TeacherID" runat="server" Text='<%#Bind("TeacherID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Subject">
                                <ItemTemplate>
                                    <asp:Label ID="Sub" runat="server" Text='<%#Bind("Sub") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Topic">
                                <ItemTemplate>
                                    <asp:Label ID="Topic" runat="server" Text='<%#Bind("Topic") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Upload Date">
                                <ItemTemplate>
                                    <asp:Label ID="UploadDate" runat="server" Text='<%#Bind("Uploaded_On") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:HyperLinkField DataNavigateUrlFields="DownloadLink" HeaderText="Download Link" Target="_blank" Text="click here" />
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
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
