<!DOCTYPE html>

<html lang="en">

<body>
Date: ${time?date}
<br>
Time: ${time?time}
<br>
Message: ${message}
<br><br>
<#list list as x>
  ${x_index + 1}. ${x}<#if x_has_next>,</#if>
</#list>
</body>

</html>