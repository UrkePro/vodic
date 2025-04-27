<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="Vodic.Registracija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registracija</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <span class="fs-4">Registracija</span>
            </a>
        </header>
    </div>
    <main>
        <form id="form1" runat="server">
            <div class="container mt-5">
                <div class="row justify-content-center">

                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" RenderOuterTable="false">
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                <ContentTemplate>
                                    <div class="card shadow">
                                        <div class="card-header bg-primary text-white">
                                            <h4 class="card-title mb-0">Kreiranje naloga</h4>
                                        </div>
                                        <div class="card-body">
                                            <div class="row g-3">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="UserName" class="form-label">Korisničko ime*</label>
                                                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="UserName" ErrorMessage="Korisničko ime je obavezno."
                                                            ValidationGroup="CreateUserWizard1"  CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="Password" class="form-label">Lozinka*</label>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="Password" ErrorMessage="Lozinka je obavezna."
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="ConfirmPassword" class="form-label">Potvrdi lozinku*</label>
                                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="ConfirmPassword" ErrorMessage="Potvrda lozinke je obavezna."
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="Email" class="form-label">Email*</label>
                                                        <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="Email" ErrorMessage="Email je obavezan."
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="EmailRegex" runat="server"
                                                            ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                            ErrorMessage="Unesite validnu email adresu." Display="Dynamic"
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small"></asp:RegularExpressionValidator>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="Question" class="form-label">Sigurnosno pitanje*</label>
                                                        <asp:TextBox ID="Question" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="Question" ErrorMessage="Sigurnosno pitanje je obavezno."
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="Answer" class="form-label">Odgovor*</label>
                                                        <asp:TextBox ID="Answer" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" Display="Dynamic"
                                                            ControlToValidate="Answer" ErrorMessage="Odgovor je obavezan."
                                                            ValidationGroup="CreateUserWizard1" CssClass="text-danger small mt-1"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mb-3 text-danger">
                                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                            </div>

                                            <div class="d-flex justify-content-between mt-4">
                                                <asp:Button ID="StepNextButton" runat="server"
                                                    CommandName="MoveNext" Text="Kreiraj nalog"
                                                    ValidationGroup="CreateUserWizard1" CssClass="btn btn-primary px-4" />

                                                <a href="/login" class="btn btn-outline-secondary">Odustani</a>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:CreateUserWizardStep>

                            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                                <ContentTemplate>
                                    <div class="card shadow">
                                        <div class="card-header bg-success text-white">
                                            <h4 class="card-title mb-0">Nalog uspešno kreiran</h4>
                                        </div>
                                        <div class="card-body text-center">
                                            <p class="lead">Vaš nalog je uspešno kreiran.</p>
                                            <a href="/" class="btn btn-primary">Nastavi</a>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:CompleteWizardStep>
                        </WizardSteps>
                        <NavigationStyle CssClass="d-none" />
                    </asp:CreateUserWizard>

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
