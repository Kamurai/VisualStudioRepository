<%@ Page Title="MySQL Programming" Language="C#" MasterPageFile="~/Division5/Template.master" AutoEventWireup="true"
    CodeFile="Project3.aspx.cs" Inherits="_Project5_3" %>
	<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<h2>
		MySQL Programming
	</h2>
	<div id="idCenterContent">
			This section is dedicated to MySQL programming.
		</br>
		</br>
			MySQL Instance
		</br>
		</br>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MySQLConnectionString %>" SelectCommand="SELECT * FROM test" ProviderName="<%$ ConnectionStrings:MySQLConnectionString.ProviderName %>">
			</asp:SqlDataSource>
		</br>
		</br>
			<asp:GridView
				  id="GridView1"
				  runat="server"
				  DataSourceID="SqlDataSource1">
			</asp:GridView>
	</div>
</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <ul class="versionsUl">
        <li><a href="http://htkb.dyndns.org/Division5/Project3.html">HTML</a></li>
		<li><a href="http://htkb.dyndns.org/Division5/Project3.php">PHP</a></li>
		<li><a href="http://htkb.dyndns.org/Division5/Project3.shtml">Perl</a></li>
		<li><a href="http://htkb.dyndns.org/SSI/Division5/Project3.html">Apache SSI</a></li>
		<li><a href="http://htkb.dyndns.org/Javascript/Division5/Project3.html">HTML Javascript</a></li>
		<li><a href="http://htkb.dyndns.org/JQuery/Division5/Project3.html">JQuery</a></li>
		<li><a href="http://htkb.dyndns.org/AngularJS/Division5/Project3.html">Angular JS</a></li>
		<li><a href="http://htkb.dyndns.org/JSX/Division5/Project3.html">JSX</a></li>
		<li><a href="http://htkb.dyndns.org/XLST/Division5/Project3.xml">XSLT</a></li>
		<li><a href="http://htkb.dyndns.org:8080/JSFApplication/Division5/Project3.xhtml">JSF</a></li>
		<li><a href="http://htkb.dyndns.org:8080/JSPApplication/Division5/Project3.jsp">JSP</a></li>
		<li><a href="http://htkb.dyndns.org:8080/SpringMVC/Division5/Project3">JSP Spring MVC</a></li>
		<li><a href="http://htkb.dyndns.org:81/ASPNET/Division5/Project3.aspx">ASP.NET Javascript</a></li>
		<li><a href="http://htkb.dyndns.org:81/ASP/Division5/Project3.asp">ASP VBscript</a></li>
		<li><a href="http://htkb.dyndns.org:81/WebApplication/Division5/Project3.cshtml">ASP.NET Web App</a></li>
		<li><a href="http://htkb.dyndns.org:81/WebForm/Division5/Project3.aspx">ASP.NET Webform</a></li>
		<li><a href="http://htkb.dyndns.org:81/MVC/Division5/Project3">ASP.NET MVC App</a></li>
		<li><a href="http://htkb.dyndns.org:82/Division5/Project3">Python Web.py</a></li>
		<li><a href="http://htkb.dyndns.org:83/Division5/Project3">Ruby on Rails</a></li>
		<li><a href="http://htkb.dyndns.org:84/Division5/Project3">Node JS</a></li>
		<li><a href="http://htkb.dyndns.org:85/Division5/Project3">Angular 2+</a></li>
		<li><a href="http://htkb.dyndns.org:86/Division5/Project3">ReactJS</a></li>
    </ul>
</asp:Content>