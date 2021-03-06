$(document).ready(function() {
    $('a.login-window').click(function() {

        // Getting the variable's value from a link
        var loginBox = $(this).attr('href');

        //Fade in the Popup and add close button
        $(loginBox).fadeIn(300);

        //Set the center alignment padding + border
        var popMargTop = ($(loginBox).height() + 24) / 2;
        var popMargLeft = ($(loginBox).width() + 24) / 2;

        $(loginBox).css({
            'margin-top' : -popMargTop,
            'margin-left' : -popMargLeft
        });

        // Add the mask to body
        $('body').append('<div id="mask"></div>');
        $('#mask').fadeIn(300);

        return false;
    });

    $(this).mousedown(function(event){
        var container = $('#login-box');
        if(event.target.id == 'close_button' || (!container.is(event.target) && container.has(event.target).length === 0)){
            $('#mask , .login-popup').fadeOut(300 , function() {
                $('#mask').remove();
            });
            return false;
        }
    })
});