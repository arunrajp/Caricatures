<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.master" AutoEventWireup="true" CodeFile="EditImage.aspx.cs" Inherits="Admin_EditImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container">
        <h1>Edit a Template</h1>
        <hr />
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Select the Template</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-2">
                        Name
                    </div>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txtTemplateToFind" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Button ID="btnFind" runat="server" CssClass="btn btn-primary pull-right" Text="Load Template" />
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Template Details</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-2">
                        Name
                    </div>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-2">
                        Category
                    </div>
                    <div class="col-lg-10">
                        <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                            <asp:ListItem Text="--Select--" Value="N/A" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Category #1" Value="Cat1"></asp:ListItem>
                            <asp:ListItem Text="Category #2" Value="Cat2"></asp:ListItem>
                            <asp:ListItem Text="Category #3" Value="Cat3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-2">
                        Tags
                    </div>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txtTags" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-2">
                        Template
                    </div>
                    <div class="col-lg-10">
                        <asp:FileUpload ID="templateUpload" runat="server" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success pull-right" Text="Update" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
