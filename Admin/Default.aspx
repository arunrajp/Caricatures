<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container">
        <br />
        <div class="jumbotron">
            <h1>Administration Portal</h1>
            <p>Provides Admins with functions such as <span class="label label-success">Uploading a Template</span> and <span class="label label-info">Editing an Existing Template</span>.</p>
            <p><a class="btn btn-primary btn-lg" href="UploadImage.aspx" role="button">Get Started!</a></p>
        </div>
    </div>
</asp:Content>
