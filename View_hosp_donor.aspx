<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View_hosp_donor.aspx.cs" Inherits="View_hosp_donor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 337px;
        }
        .auto-style7 {
            width: 434px;
            
        }
        .auto-style13 {
            width: 940px;
        }
        .auto-style14 {
            width: 133%;
            height: 574px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            height: 273px;
            width: 546px;
        }
        .auto-style17 {
            width: 176px;
        }
        .auto-style25 {
            color: #ED1C24;
        }
        .auto-style26 {
            width: 546px;
            height: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 602px; background-repeat: no-repeat;">

        <table class="auto-style6" style="background-color: #000000; height: 769px; width: 143%;">
            <tr>
                <td class="auto-style7" style="background-color: #FFFFFF">
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style16">
                                <table class="auto-style15">
                                    <tr>
                                        <td>View By:<br />
                                            <table class="auto-style15">
                                                <tr>
                                                    <td class="auto-style17">Select State</td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" CssClass="auto-style25" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                                            <asp:ListItem>--SELECT--</asp:ListItem>
                                                            <asp:ListItem>WEST BENGAL</asp:ListItem>
                                                            <asp:ListItem>DELHI</asp:ListItem>
                                                            <asp:ListItem>TELANGANA</asp:ListItem>
                                                            <asp:ListItem>MUMBAI</asp:ListItem>
                                                            <asp:ListItem>TAMIL NADU</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style17">Select City</td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" CssClass="auto-style25" Height="16px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="122px">
                                                            <asp:ListItem>--SELECT--</asp:ListItem>
                                                            <asp:ListItem>DURGAPUR</asp:ListItem>
                                                            <asp:ListItem>BANKURA</asp:ListItem>
                                                            <asp:ListItem>ASANSOL</asp:ListItem>
                                                            <asp:ListItem>MALDA</asp:ListItem>
                                                            <asp:ListItem>KOLKATA</asp:ListItem>
                                                            <asp:ListItem>NOIDA</asp:ListItem>
                                                            <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" Text="View All" />
                                            <br />
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BookAppointmeent.aspx">Book Apointment</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26" style="background-color: #ED1C24">
                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="color: #FFFFFF">
                   
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg]"></asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" style="color: #FFFFFF">
                                                                             </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg] WHERE ([State] = @State)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList5" Name="State" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource3" style="color: #FFFFFF">
            
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg] WHERE (([State] = @State) AND ([City] = @City))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList5" Name="State" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList4" Name="City" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style13" style="background-color: #FFFFFF; background-repeat: no-repeat;">
                    <asp:Image ID="Image2" runat="server" Height="757px" ImageUrl="~/NewFolder1/Home_banner_Blood_Story02-1400x752.gif" style="margin-left: 0px" Width="740px" />
                </td>
            </tr>
        </table>

    </div>

        

    </asp:Content>

