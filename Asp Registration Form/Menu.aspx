<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Asp_Registration_Form.WebForm3" %>
<%--	<meta name="author" content="Marcelina Woziwoda">--%> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Menu</title>


    <link href="MenuStyle.css" rel="stylesheet" />

</head>
<body>
    <section>


    <form id="form1" runat="server">
        
                <span>
   
   
                <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Size="Medium" BorderColor="White" BorderStyle="Solid"></asp:Label>
   
   <br />
                    <asp:Button ID="Powrot" placeholder="Wyloguj" OnClick="Button_wyloguj" runat="server" Text="Wyloguj" Font-Bold="True" Font-Italic="True"  Font-Size="Medium" Font-Overline="False"  Height="50px" Width="250px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid"  />
   
   
                </span>
            <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="~/Images/baner.png" Width="811px" ImageAlign="Middle" />
               <br /> 
                <asp:FormView ID="FormView1" runat="server" Visible="false"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Both">
                    <EditItemTemplate>
                      <h3>Twoje zamówienie</h3>
                        <asp:Label ID="idLabel1" runat="server" Visible="false" Text='<%# Eval("id") %>' />
                        <br />
                        nazwa:
                        <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                       
                        <asp:TextBox ID="opisTextBox" runat="server" Visible="false" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        nazwa:
                        <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                                                <asp:TextBox ID="opisTextBox" runat="server" Visible="false" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:TextBox ID="cenaTextBox" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                      
                        <asp:Label ID="idLabel" runat="server" Visible="false" Text='<%# Eval("id") %>' />
                        <br />
                        nazwa:
                        <asp:Label ID="nazwaLabel" runat="server" Text='<%# Bind("nazwa") %>' />
                        <br />
                     
                        <asp:Label ID="opisLabel" runat="server" Visible="false" Text='<%# Bind("opis") %>' />
                        <br />
                        cena:
                        <asp:Label ID="cenaLabel" runat="server" Text='<%# Bind("cena") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" SelectCommand="SELECT * FROM [Menu]"></asp:SqlDataSource>
                <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="387px" Width="1156px" BackColor="White" BorderColor="#333333" CellPadding="0" CellSpacing="30" ForeColor="Black" HorizontalAlign="Center" RowHeaderColumn="nazwa" ShowHeader="False" ShowHeaderWhenEmpty="True" Font-Bold="True" Font-Size="Large" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            
         
            <Columns>
            
                    <asp:CommandField ShowSelectButton="True" />
            
                    <asp:BoundField DataField="nazwa" HeaderText="Nazwa Dania" SortExpression="nazwa" />
           
                    <asp:BoundField DataField="opis" HeaderText="Opis dania" SortExpression="opis" />
             
                      <asp:BoundField ItemStyle-width="10%" DataField="cena" HeaderText="Cena" SortExpression="cena" />

               
            </Columns>
            <EditRowStyle Font-Bold="True" Font-Size="X-Large" HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" />


        </asp:GridView>
            <br />
        <asp:Button ID="zamow" runat="server" OnClick="Button4_Click" Text="Zamów" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="50px" Width="250px" />
  
    </form>
           
                
    </section>
 
</body>
</html>
