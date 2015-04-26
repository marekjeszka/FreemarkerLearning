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
            <tr><th>First Name</th><th>Last Name</th><th>Save</th></tr>
            <#list list as user>
                <tr>
                    <td contenteditable="true">${user.firstName}</td>
                    <td contenteditable="true">${user.lastName}</td>
                    <td><img id="save_button" src="Green_tick.png"></img></td>
                </tr>
            </#list>
        </table>
    </div>
</div>
<script type="text/javascript">
    onload = function() {
        if (!document.getElementsByTagName || !document.createTextNode) return;
        var rows = document.getElementById('table').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
        for (i = 0; i < rows.length; i++) {
            var cells = rows[i].cells;
            var lastCell = cells[cells.length - 1];
            if (lastCell.localName == 'td') {
                lastCell.onclick = function() {
                    alert(this.parentElement.rowIndex);
                }
            }
        }
    }
    function save(index) {
        document.getElementById("result").innerHTML = "Clicked! " + index;
    }
</script>
</body>

</html>