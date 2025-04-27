<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vodic.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <span class="fs-4">Log in</span>
            </a>
        </header>
    </div>
    <main>
        <form id="form1" runat="server">
            <asp:Login ID="Login1" runat="server" FailureText="Pogresno ste uneli Username ili sifru, molimo vas pokusajte ponovo." autocomplete="on" OnLoggedIn="Login1_LoggedIn" CssClass="container mt-5">
                <LayoutTemplate>
                    <div class="row justify-content-center">
                        <div class="col-md-6">
                            <div class="card shadow">
                                <div class="card-header bg-primary text-white">
                                    <h4 class="card-title mb-0">Prijava</h4>
                                </div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="form-label">Korisničko ime:</asp:Label>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control" autocomplete="username"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="form-label">Lozinka:</asp:Label>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" autocomplete="current-password"></asp:TextBox>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input id="Login1_RememberMe" type="checkbox" name="Login1$RememberMe" class="form-check-input">
                                        <label for="Login1_RememberMe" id="Login1_RememberMeLabel" class="form-check-label">Zapamti me</label>
                                    </div>
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Prijavi se" CssClass="btn btn-primary w-100" />
                                    <div class="text-danger mt-2">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False" />
                                    </div>
                                    <div class="d-flex justify-content-between mt-3">
                                        <a href="/reset" class="text-decoration-none">Zaboravili ste lozinku?</a>
                                        <a href="/register" class="text-decoration-none">Registrujte se</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </form>
    </main>
    <div class="container">
        <footer class="py-3 my-4">
            <p class="text-center text-body-secondary">© 2025 Uros Radovanovic III1n i Milica Stanisic III1n</p>
        </footer>
    </div>
</body>
</html>
