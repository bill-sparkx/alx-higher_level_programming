/*
    A script tha updates the text color of the HTML tag HEADER to red (#FF0000)
    when the user clicks on the tag DIV#red_header
    , using JQuery API
    */

$('DIV#red_header').click(function () {
    $('HEADER').css('color', '#FF0000');
});
