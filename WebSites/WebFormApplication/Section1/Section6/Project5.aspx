<%@ Page Title="PostgreSQL Programming" Language="C#" MasterPageFile="~/Section1/Section6/Template.master" AutoEventWireup="true"
    CodeFile="Project5.aspx.cs" Inherits="_Project1_6_5" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<h1>
	PostgreSQL Programming
</h1>
<p id="idCenterContent">
	This section is dedicated to PostgreSQL programming.
</br>
</br>
    PostgreSQL Instance
    </br>
    </br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgreSQLConnectionString %>" SelectCommand="SELECT * FROM &quot;Test&quot;.&quot;Test&quot;" ProviderName="<%$ ConnectionStrings:PostgreSQLConnectionString.ProviderName %>">
    </asp:SqlDataSource>
    </br>
    </br>
    <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Index" HeaderText="Index" SortExpression="Index" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        </Columns>
    </asp:GridView>
</div>
    
</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <a href="http://htkb.dyndns.org/Section1/Section6/Project5.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Section1/Section6/Project5.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Javascript/Section1/Section6/Project5.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Section1/Section6/Project5.asp">ASP Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Section1/Section6/Project5.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org/Section1/Section6/Project5.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Section1/Section6/Project5.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Section1/Section6/Project5.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Section1/Section6/Project5.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Section1/Section6/Project5">ASP.NET MVC App</a></br>
	<a href="http://htkb.dyndns.org/SSI/Section1/Section6/Project5.html">Apache SSI</a></br>
</asp:Content>