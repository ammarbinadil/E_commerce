<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home_async.aspx.cs" Inherits="secured_home_async" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../package/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //$(".abc").click(function () {
            //    alert("button");
            //});
            $.ajax({
                type: "POST",
                url: '<%=ResolveUrl("/datafetch.asmx/GetProducts")%>',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: "{p:'" + $("#tbinput").val() + "',x:'123'}",
                success: function (r) {
                    var j = JSON.parse(r.d);
                    $.each(j, function (index, item) {
                        $("#responsetable").append("<tr>");
                        $("#responsetable").append("<td>" + item["ProductName"] + "</td>");
                        $("#responsetable").append("<td>" + item["Description"] + "</td>");
                        $("#responsetable").append("<td>" + item["Price"] + "</td>");
                        $("#responsetable").append("</tr>");
                    });
                },
                error: function (r) { },
                failure: function (r) { }
            }
                );

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="tbinput" />
            <h2>Welcome to Ammar Online</h2>
            <div id="responsedata">
                <table id="responsetable">
                    <tr>
                        <td>Product Name</td>
                        <td>Description</td>
                        <td>Price</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
