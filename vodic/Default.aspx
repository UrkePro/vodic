<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vodic.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pocetna strana</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                        <span class="fs-4">Virtualni vodic za turiste</span>
                    </a>

                    <div class="dropdown text-end">
                        <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            <asp:Label ID="lblUsername" runat="server" />
                        </a>
                        <ul class="dropdown-menu text-small" style="">
                            <li><a class="dropdown-item" href="/profile">Promena lozinke</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="dropdown-item" /></li>
                        </ul>
                    </div>
                </header>
            </div>
            <main class="container mt-4">

                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="card-title mb-0">Odaberite destinaciju</h4>
                    </div>
                    <div class="card-body">
                        <div class="row g-3">
                            <!-- Država -->
                            <div class="col-md-6">
                                <label for="ddlDrzava" class="form-label">Država</label>
                                <asp:DropDownList ID="ddlDrzava" runat="server"
                                    DataTextField="naziv_drzave" DataValueField="drzava_id"
                                    DataSourceID="SqlDataSource1" AutoPostBack="True"
                                    AppendDataBoundItems="True"
                                    OnSelectedIndexChanged="ddlDrzava_SelectedIndexChanged"
                                    CssClass="form-select">
                                    <asp:ListItem Text="-- Izaberi državu --" Value="" />
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1"
                                    ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                    SelectCommand="SELECT * FROM [Drzave]"></asp:SqlDataSource>
                            </div>

                            <!-- Grad -->
                            <div class="col-md-6">
                                <label for="ddlGrad" class="form-label">Grad</label>
                                <asp:DropDownList ID="ddlGrad" runat="server"
                                    DataTextField="naziv_grada" DataValueField="grad_id"
                                    DataSourceID="SqlDataSource2" AutoPostBack="True"
                                    AppendDataBoundItems="True"
                                    OnSelectedIndexChanged="ddlGrad_SelectedIndexChanged"
                                    CssClass="form-select">
                                    <asp:ListItem Text="-- Izaberi grad --" Value="" />
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2"
                                    ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                    SelectCommand="SELECT * FROM [Gradovi] WHERE [drzava_id] = @drzavaId">
                                    <SelectParameters>
                                        <asp:ControlParameter Name="drzavaId" ControlID="ddlDrzava" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <!-- Znamenitost -->
                            <div class="col-md-6">
                                <label for="ddlZnamenitost" class="form-label">Znamenitost</label>
                                <asp:DropDownList ID="ddlZnamenitost" runat="server"
                                    DataTextField="naziv_znamenitosti" DataValueField="znamenitost_id"
                                    DataSourceID="SqlDataSource5" AppendDataBoundItems="True"
                                    CssClass="form-select">
                                    <asp:ListItem Text="-- Izaberi znamenitost --" Value="" />
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource5"
                                    ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                    SelectCommand="SELECT * FROM [Znamenitosti] WHERE [grad_id] = @gradId">
                                    <SelectParameters>
                                        <asp:ControlParameter Name="gradId" ControlID="ddlGrad" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <!-- Hotel -->
                            <div class="col-md-6">
                                <label for="ddlHotel" class="form-label">Hotel</label>
                                <asp:DropDownList ID="ddlHotel" runat="server"
                                    DataTextField="naziv_hotela" DataValueField="hotel_id"
                                    DataSourceID="SqlDataSource3" AppendDataBoundItems="True"
                                    CssClass="form-select">
                                    <asp:ListItem Text="-- Izaberi hotel --" Value="" />
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource3"
                                    ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                    SelectCommand="SELECT * FROM [Hoteli] WHERE [grad_id] = @gradId">
                                    <SelectParameters>
                                        <asp:ControlParameter Name="gradId" ControlID="ddlGrad" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <!-- Restoran -->
                            <div class="col-md-6">
                                <label for="ddlRestoran" class="form-label">Restoran</label>
                                <asp:DropDownList ID="ddlRestoran" runat="server"
                                    DataTextField="naziv_restorana" DataValueField="restoran_id"
                                    DataSourceID="SqlDataSource4" AppendDataBoundItems="True"
                                    CssClass="form-select">
                                    <asp:ListItem Text="-- Izaberi restoran --" Value="" />
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource4"
                                    ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                                    SelectCommand="SELECT * FROM [Restorani] WHERE [grad_id] = @gradId">
                                    <SelectParameters>
                                        <asp:ControlParameter Name="gradId" ControlID="ddlGrad" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
            </main>
            <div class="container">
                <footer class="py-3 my-4">
                    <p class="text-center text-body-secondary">© 2025 Uros Radovanovic III1n i Milica Stanisic III1n</p>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
