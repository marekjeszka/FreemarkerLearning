<!DOCTYPE html>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
<div class="container">
    Date: ${time?date}
    <br>
    Time: ${time?time}
    <br>
    Message: ${message}
    <br><br>
    <div id="table" class="table-editable">
        <table class="table">
            <tr><th>First Name</th><th>Last Name</th></tr>
            <#list list as user>
                <tr><td>${user.firstName}</td><td>${user.lastName}</td></tr>
            </#list>
        </table>
    </div>
</div>
</body>

</html>