<!DOCTYPE html>

<html lang="en">

<body>
Date: ${time?date}
<br>
Time: ${time?time}
<br>
Message: ${message}
<br><br>
<table border=1>
    <tr><th>Item
    <#list list as x>
        <tr><td>${x}
    </#list>
</table>
</body>

</html>