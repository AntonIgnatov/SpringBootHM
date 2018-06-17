<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New group with students</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>

<form action="/add" method="post" name="Form">
    <div class="form-group"><h3>New group with contacts</h3></div>
    <div class="form-group"><input type="submit" class="btn btn-primary" value="Add"></div><br>
    <div class="form-group"><input type="text" class="form-control" name="nameGroup" placeholder="Name"></div>

    <div id="DynamicExtraFieldsContainer">
        <br>
        <div id="addDynamicField">
            <input type="button" id="addDynamicExtraFieldButton" value="Add one more contact">
        </div>
        <div class="DynamicExtraField">

        </div>
    </div>
</form>
<script>$('#addDynamicExtraFieldButton').click(function (event) {
    addDynamicExtraField();
    return false;
});

function addDynamicExtraField() {
    var div = $('<div/>', {
        'class': 'DynamicExtraField'
    }).appendTo($('#DynamicExtraFieldsContainer'));
    var br = $('<br/>').appendTo(div);
    var label = $('<label/>').html("New contact").appendTo(div);
    var br = $('<br/>').appendTo(div);
    var input = $('<input/>', {
        class: 'form-control form-group',
        type: 'text',
        name: 'contactField[]',
        placeholder: 'Name'
    }).appendTo(div);
    var input = $('<input/>', {
        class: 'form-control form-group',
        type: 'text',
        name: 'contactField[]',
        placeholder: 'Surname'
    }).appendTo(div);
    var input = $('<input/>', {
        class: 'form-control form-group',
        type: 'text',
        name: 'contactField[]',
        placeholder: 'Phone'
    }).appendTo(div);
    var input = $('<input/>', {
        class: 'form-control form-group',
        type: 'text',
        name: 'contactField[]',
        placeholder: 'E-mail'
    }).appendTo(div);
}
</script>

</body>
</html>
