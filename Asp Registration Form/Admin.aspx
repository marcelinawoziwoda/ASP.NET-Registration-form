<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Asp_Registration_Form.Admin" %>
	<%--<meta name="author" content="Marcelina Woziwoda">--%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    

    <title>Admin</title>
    
</head>
<body style="background-image: none; background-repeat: no-repeat; background-color: #C0C0C0; background-attachment: fixed;">
       <section>
       
             
    <form id="form1" runat="server">
        
        <asp:Button ID="Button1" runat="server" Text="Logowanie " Height="50px" Width="130px" Font-Bold="True" Font-Italic="True"  Font-Size="Small" PostBackUrl="~/Login.aspx" />
        
     <br />
        
        <br />    
        <div class="container">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                        <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                        <asp:BoundField DataField="haslo" HeaderText="haslo" SortExpression="haslo" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:FormView ID="FormView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        imie:
                        <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        login:
                        <asp:TextBox ID="loginTextBox" runat="server" Text='<%# Bind("login") %>' />
                        <br />
                        haslo:
                        <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <InsertItemTemplate>
                        imie:
                        <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        login:
                        <asp:TextBox ID="loginTextBox" runat="server" Text='<%# Bind("login") %>' />
                        <br />
                        haslo:
                        <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        imie:
                        <asp:Label ID="imieLabel" runat="server" Text='<%# Bind("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Bind("nazwisko") %>' />
                        <br />
                        email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        login:
                        <asp:Label ID="loginLabel" runat="server" Text='<%# Bind("login") %>' />
                        <br />
                        haslo:
                        <asp:Label ID="hasloLabel" runat="server" Text='<%# Bind("haslo") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                    </ItemTemplate>
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" DeleteCommand="DELETE FROM [Rejestracja] WHERE [id] = @id" InsertCommand="INSERT INTO [Rejestracja] ([imie], [nazwisko], [email], [login], [haslo]) VALUES (@imie, @nazwisko, @email, @login, @haslo)" SelectCommand="SELECT * FROM [Rejestracja]" UpdateCommand="UPDATE [Rejestracja] SET [imie] = @imie, [nazwisko] = @nazwisko, [email] = @email, [login] = @login, [haslo] = @haslo WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="login" Type="String" />
                        <asp:Parameter Name="haslo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="login" Type="String" />
                        <asp:Parameter Name="haslo" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>

                    
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="miejscowosc" HeaderText="miejscowosc" SortExpression="miejscowosc" />
                        <asp:BoundField DataField="kod_pocztowy" HeaderText="kod_pocztowy" SortExpression="kod_pocztowy" />
                        <asp:BoundField DataField="numer_telefonu" HeaderText="numer_telefonu" SortExpression="numer_telefonu" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" DeleteCommand="DELETE FROM [Zamowienie] WHERE [id] = @id" InsertCommand="INSERT INTO [Zamowienie] ([miejscowosc], [kod_pocztowy], [numer_telefonu]) VALUES (@miejscowosc, @kod_pocztowy, @numer_telefonu)" SelectCommand="SELECT * FROM [Zamowienie]" UpdateCommand="UPDATE [Zamowienie] SET [miejscowosc] = @miejscowosc, [kod_pocztowy] = @kod_pocztowy, [numer_telefonu] = @numer_telefonu WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="miejscowosc" Type="String" />
                        <asp:Parameter Name="kod_pocztowy" Type="String" />
                        <asp:Parameter Name="numer_telefonu" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="miejscowosc" Type="String" />
                        <asp:Parameter Name="kod_pocztowy" Type="String" />
                        <asp:Parameter Name="numer_telefonu" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        miejscowosc:
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        kod_pocztowy:
                        <asp:TextBox ID="kod_pocztowyTextBox" runat="server" Text='<%# Bind("kod_pocztowy") %>' />
                        <br />
                        numer_telefonu:
                        <asp:TextBox ID="numer_telefonuTextBox" runat="server" Text='<%# Bind("numer_telefonu") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        miejscowosc:
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        kod_pocztowy:
                        <asp:TextBox ID="kod_pocztowyTextBox" runat="server" Text='<%# Bind("kod_pocztowy") %>' />
                        <br />
                        numer_telefonu:
                        <asp:TextBox ID="numer_telefonuTextBox" runat="server" Text='<%# Bind("numer_telefonu") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        miejscowosc:
                        <asp:Label ID="miejscowoscLabel" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        kod_pocztowy:
                        <asp:Label ID="kod_pocztowyLabel" runat="server" Text='<%# Bind("kod_pocztowy") %>' />
                        <br />
                        numer_telefonu:
                        <asp:Label ID="numer_telefonuLabel" runat="server" Text='<%# Bind("numer_telefonu") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:FormView>
                <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="miejscowosc" HeaderText="miejscowosc" SortExpression="miejscowosc" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" DeleteCommand="DELETE FROM [Dostawa] WHERE [id] = @id" InsertCommand="INSERT INTO [Dostawa] ([id], [miejscowosc]) VALUES (@id, @miejscowosc)" SelectCommand="SELECT * FROM [Dostawa]" UpdateCommand="UPDATE [Dostawa] SET [miejscowosc] = @miejscowosc WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="miejscowosc" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="miejscowosc" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView3" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        miejscowosc:
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        id:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        miejscowosc:
                        <asp:TextBox ID="miejscowoscTextBox" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        miejscowosc:
                        <asp:Label ID="miejscowoscLabel" runat="server" Text='<%# Bind("miejscowosc") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:FormView>
                <br />
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="zamowienie" HeaderText="zamowienie" SortExpression="zamowienie" />
                        <asp:BoundField DataField="cena" HeaderText="cena" SortExpression="cena" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" DeleteCommand="DELETE FROM [UzytkownikZam] WHERE [id] = @id" InsertCommand="INSERT INTO [UzytkownikZam] ([zamowienie], [cena], [login]) VALUES (@zamowienie, @cena, @login)" SelectCommand="SELECT * FROM [UzytkownikZam]" UpdateCommand="UPDATE [UzytkownikZam] SET [zamowienie] = @zamowienie, [cena] = @cena, [login] = @login WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="zamowienie" Type="String" />
                        <asp:Parameter Name="cena" Type="String" />
                        <asp:Parameter Name="login" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="zamowienie" Type="String" />
                        <asp:Parameter Name="cena" Type="String" />
                        <asp:Parameter Name="login" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView4" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        zamowienie:
                        <asp:TextBox ID="zamowienieTextBox" runat="server" Text='<%# Bind("zamowienie") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        zamowienie:
                        <asp:TextBox ID="zamowienieTextBox" runat="server" Text='<%# Bind("zamowienie") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        zamowienie:
                        <asp:Label ID="zamowienieLabel" runat="server" Text='<%# Bind("zamowienie") %>' />
                        <br />
                        cena:
                        <asp:Label ID="cenaLabel" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:FormView>
                <br />
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                        <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                        <asp:BoundField DataField="cena" HeaderText="cena" SortExpression="cena" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" DeleteCommand="DELETE FROM [Menu] WHERE [id] = @id" InsertCommand="INSERT INTO [Menu] ([nazwa], [opis], [cena]) VALUES (@nazwa, @opis, @cena)" SelectCommand="SELECT * FROM [Menu]" UpdateCommand="UPDATE [Menu] SET [nazwa] = @nazwa, [opis] = @opis, [cena] = @cena WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="nazwa" Type="String" />
                        <asp:Parameter Name="opis" Type="String" />
                        <asp:Parameter Name="cena" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nazwa" Type="String" />
                        <asp:Parameter Name="opis" Type="String" />
                        <asp:Parameter Name="cena" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />

                <asp:FormView ID="FormView5" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        nazwa:
                        <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                        opis:
                        <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        nazwa:
                        <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                        opis:
                        <asp:TextBox ID="opisTextBox" runat="server" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        nazwa:
                        <asp:Label ID="nazwaLabel" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                        opis:
                        <asp:Label ID="opisLabel" runat="server" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:Label ID="cenaLabel" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:FormView>
                <br />
            </div>
        
             </form>
             </section>
                
    </body>
</html>
