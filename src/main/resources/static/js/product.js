$(document).ready(function() {
    //$('div').html("Hi");
    getData();
});


function getData() {
    $.ajax({
        url: "product",
        type: "GET",
        dataType: "json",
        contentType: "application/json",
        mimeType: "application/json",
        success: function (data) {
            $('#d1').text(data.id);
            $('#d2').text(data.title);
            $('#d3').text(data.description);
        }
    })
}