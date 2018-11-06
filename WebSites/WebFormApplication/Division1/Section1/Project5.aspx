<%@ Page Title="PostgreSQL Programming" Language="C#" MasterPageFile="~/Division1/Section1/Template.master" AutoEventWireup="true"
    CodeFile="Project5.aspx.cs" Inherits="_Project1_1_5" %>

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
    <a href="http://htkb.dyndns.org/Division1/Section6/Project5.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project5.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project5.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org/SSI/Division1/Section6/Project5.html">Apache SSI</a></br>
	<a href="http://htkb.dyndns.org/Javascript/Division1/Section6/Project5.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org/JQuery/Division1/Section6/Project5.html">JQuery</a></br>
	<a href="http://htkb.dyndns.org/AngularJS/Division1/Section6/Project5.html">Angular JS</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Division1/Section6/Project5.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Division1/Section6/Project5.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/SpringMVC/Division1/Section6/Project5.jsp">JSP Spring MVC</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Division1/Section6/Project5.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Division1/Section6/Project5.asp">ASP VBscript</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Division1/Section6/Project5.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Main/Division1/Section6/Project5">ASP.NET MVC App</a></br>
    <a href="http://htkb.dyndns.org:82/Division1/Section6/Project5">Python Web.py</a></br>
    <a href="http://htkb.dyndns.org:83/Division1/Section6/Project5">Ruby on Rails</a></br>
    <a href="http://htkb.dyndns.org:84/Division1/Section6/Project5">Node JS</a></br>
</asp:Content>