<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dostawa.aspx.cs" Inherits="Asp_Registration_Form.WebForm5" %>
	<%--<meta name="author" content="Marcelina Woziwoda">--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Dostawa</title>


    <link href="DostawaStyle.css" rel="stylesheet" />
  
</head>
<body>
    <section>
       
    <form id="form1" runat="server">
     
                <span>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Size="Medium" BorderColor="White" BorderStyle="Solid"></asp:Label>
                    <br />
                    
                    
                    <asp:Button ID="Powrot"  placeholder="Wyloguj" OnClick="Button_wyloguj" runat="server" Text="Wyloguj" Font-Bold="True" Font-Italic="True"  Font-Size="Medium" Font-Overline="False"  Height="50px" Width="250px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CausesValidation="false" /> 
                <br />

                   
                </span>
             

            <div class="container">
               
               <h2 align="center", style="color:azure; " >Dostawa <br />
                    </h2>
                
                <div class="picture">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"  />
                        <Columns>
                            <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                            <asp:BoundField DataField="cena" HeaderText="cena" SortExpression="cena" />
                        </Columns>
                    </asp:GridView>

                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" SelectCommand="SELECT [nazwa], [cena] FROM [Menu]"></asp:SqlDataSource>

                    
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/tak.jpg" Visible ="False" />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/nie.jpg" Visible ="False"/>
                   <br />
                     <asp:Label ID="Napis" runat="server" Visible ="False" ForeColor="Green" BackColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="False"></asp:Label>
                </div>
                </div>
                </form>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektConnectionString2 %>" SelectCommand="SELECT * FROM [Dostawa]"></asp:SqlDataSource>
        </section>
    <p>
        &nbsp;</p>
</body>
</html>
