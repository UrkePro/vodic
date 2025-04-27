<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetovanje.aspx.cs" Inherits="Vodic.Generisanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generisanje lozinke</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <span class="fs-4">Resetovanje lozinke</span>
            </a>
        </header>
    </div>
    <main>
        <form id="form1" runat="server">
            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" RenderOuterTable="false" OnSendingMail="PasswordRecovery1_SendingMail">
                            <UserNameTemplate>
                                <div class="card shadow">
                                    <div class="card-header bg-primary text-white">
                                        <h4 class="card-title mb-0">Resetovanje lozinke</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <label for="UserName" class="form-label">Korisničko ime ili email</label>
                                            <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                                ControlToValidate="UserName" ErrorMessage="Korisničko ime je obavezno."
                                                ValidationGroup="PasswordRecovery1" CssClass="text-danger small d-block mt-1"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="mb-3 text-danger">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </div>

                                        <div class="d-flex justify-content-between">
                                            <asp:Button ID="SubmitButton" runat="server"
                                                CommandName="Submit" Text="Pošalji"
                                                CssClass="btn btn-primary" />

                                            <a href="/login" class="btn btn-outline-secondary">Odustani</a>
                                        </div>
                                    </div>
                                </div>
                            </UserNameTemplate>

                            <QuestionTemplate>
                                <div class="card shadow">
                                    <div class="card-header bg-primary text-white">
                                        <h4 class="card-title mb-0">Potvrda identiteta</h4>
                                    </div>
                                    <div class="card-body">
                                        <p class="lead">Pitanje: <strong>
                                            <asp:Literal ID="Question" runat="server" /></strong></p>

                                        <div class="mb-3">
                                            <label for="Answer" class="form-label">Odgovor</label>
                                            <asp:TextBox ID="Answer" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server"
                                                ControlToValidate="Answer" ErrorMessage="Odgovor je obavezan."
                                                ValidationGroup="PasswordRecovery1" CssClass="text-danger small d-block mt-1"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="d-flex justify-content-between">
                                            <asp:Button ID="SubmitButton" runat="server"
                                                CommandName="Submit" Text="Potvrdi"
                                                CssClass="btn btn-primary" />

                                            <a href="/login" class="btn btn-outline-secondary">Odustani</a>
                                        </div>
                                    </div>
                                </div>
                            </QuestionTemplate>

                            <SuccessTemplate>
                                <div class="card shadow">
                                    <div class="card-header bg-success text-white">
                                        <h4 class="card-title mb-0">Password Recovery Successful</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="alert alert-info">
                                            <p class="lead"><strong>
                                                <asp:Literal ID="PasswordLiteral" runat="server" /></strong></p>
                                        </div>
                                        <asp:Button ID="ContinueButton" runat="server"
                                            CausesValidation="False" CommandName="Continue" Text="Continue"
                                            CssClass="btn btn-primary" />
                                    </div>
                                </div>
                            </SuccessTemplate>
                        </asp:PasswordRecovery>
                    </div>
                </div>
            </div>
        </form>
    </main>
    <div class="container">
        <footer class="py-3 my-4">
            <p class="text-center text-body-secondary">© 2025 Uros Radovanovic III1n i Milica Stanisic III1n</p>
        </footer>
    </div>
</body>
</html>
