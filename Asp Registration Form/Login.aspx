<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Asp_Registration_Form.WebForm2" %>
<%--	<meta name="author" content="Marcelina Woziwoda">--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Logowanie</title>
    <link href="LoginStyle.css" rel="stylesheet" />
    
</head>
<body>
       <section>
       <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl="~/Images/baner.png" Width="593px" ImageAlign="TextTop" />
             
    <form id="form1" runat="server">
     
            <div class="container">
                <br />
               <h2 align="center", style="color:azure; " >
                   <asp:Button ID="Button2" placeholder="Zobacz Menu bez logowania" OnClick="Button_menu" runat="server" Text="Menu" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Medium" Font-Overline="False"  Height="50px" Width="250px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" />
                   Zaloguj się <br />
                    </h2>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="login1" ErrorMessage="Uzupełnij..!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox  ID="login1" placeholder="   Login" runat="server" Height="60px" Width="300px" BackColor="White"  Font-Size="Small"></asp:TextBox> <br /><br />
                
                <br />
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="password1" ErrorMessage="Uzupełnij..!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="password1" placeholder="    Hasło" runat="server" TextMode="Password" MaxLength="45" Height="60px" Width="300px" BackColor="White"  Font-Size="Small"></asp:TextBox><br /><br />
      
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zaloguj " Height="50px" Width="100px" Font-Bold="True" Font-Italic="True"  Font-Size="Small"  ToolTip="Kliknij, by zalogować"/>
                <asp:Label ID="Label1" Visible="false" runat="server" ForeColor="Red"></asp:Label>
                 
                <br />
              
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Nie masz konta? Zarejestruj się" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" Font-Underline="True" ToolTip="Przejdź do panelu rejestracji" text-shadow="None" PostBackUrl="~/Registration.aspx" EnableTheming="True" CausesValidation="False"></asp:LinkButton>
            </div>
        
             </form>
             </section>
                
    </body>
</html>
