<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Vodic.Promena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profil / promena lozinke</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <main>
            <div class="container mt-5">
                <asp:ChangePassword ID="ChangePassword1" runat="server" RenderOuterTable="false">
                    <ChangePasswordTemplate>
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="card shadow">
                                    <div class="card-header bg-primary text-white">
                                        <h4 class="card-title mb-0">Promena lozinke</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <label for="CurrentPassword" class="form-label">Trenutna lozinka</label>
                                            <asp:TextBox ID="CurrentPassword" runat="server"
                                                TextMode="Password" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" Display="Dynamic"
                                                ControlToValidate="CurrentPassword" ErrorMessage="Lozinka je obavezna."
                                                ValidationGroup="ChangePassword1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="mb-3">
                                            <label for="NewPassword" class="form-label">Nova lozinka</label>
                                            <asp:TextBox ID="NewPassword" runat="server"
                                                TextMode="Password" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" Display="Dynamic"
                                                ControlToValidate="NewPassword" ErrorMessage="Nova lozinka je obavezna."
                                                ValidationGroup="ChangePassword1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="mb-3">
                                            <label for="ConfirmNewPassword" class="form-label">Potvrdi novu lozinku</label>
                                            <asp:TextBox ID="ConfirmNewPassword" runat="server"
                                                TextMode="Password" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" Display="Dynamic"
                                                ControlToValidate="ConfirmNewPassword" ErrorMessage="Potvrda lozinke je obavezna."
                                                ValidationGroup="ChangePassword1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="mb-3">
                                            <asp:CompareValidator ID="NewPasswordCompare" runat="server"
                                                ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                                Display="Dynamic" ErrorMessage="Lozinke se ne poklapaju."
                                                ValidationGroup="ChangePassword1" CssClass="text-danger small"></asp:CompareValidator>
                                        </div>

                                        <div class="mb-3 text-danger">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </div>

                                        <div class="d-flex justify-content-between mt-3">
                                            <asp:Button ID="ChangePasswordPushButton" runat="server"
                                                CommandName="ChangePassword" Text="Promeni lozinku"
                                                CssClass="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ChangePasswordTemplate>

                    <SuccessTemplate>
                        <div class="card shadow">
                            <div class="card-header bg-success text-white">
                                <h4 class="card-title mb-0">Uspešna promena lozinke</h4>
                            </div>
                            <div class="card-body text-center">
                                <p class="lead">Vaša lozinka je uspešno promenjena.</p>
                                <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>
                    </SuccessTemplate>
                </asp:ChangePassword>
            </div>
        </main>
        <div class="container">
            <footer class="py-3 my-4">
                <p class="text-center text-body-secondary">© 2025 Uros Radovanovic III1n i Milica Stanisic III1n</p>
            </footer>
        </div>
    </form>
</body>
</html>
