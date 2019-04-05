jQuery(function ($) {
    var fx = {
        "initModel": function () {
            if (jQuery('.model-window').length == 0) {
                jQuery('<div>').attr('id', 'jQuery-overlay').fadeIn(3000).appendTo('body');
                return jQuery('<div>').addClass('model-window').fadeIn(2000).appendTo('body');
            } else {
                return jQuery('.model-window');
            }
        }

    };

    jQuery('.clickme').click(function () {
        var id = jQuery(this).attr('data_id');
        //console.log(id);
       var modal = fx.initModel();
        jQuery('<a>').attr('href','#').addClass('modal-close-btn').html('&times').click(function (event) {
            event.preventDefault();
            modal.fadeOut(2000,function(){
                modal.remove();
            })
            jQuery('#jQuery-overlay').fadeOut(2000,function () {
                jQuery('#jQuery-overlay').remove();
            });
        }).appendTo(modal);
        jQuery.ajax({
            type:'Post',
            url:'/ajax/modal',
            data:'id='+id,
           // beforeSend:function () {},
            success:function (data) {
               modal.append(data) ;
            },
            error:function (msg) {
               console.log('error');
               console.log(msg);
            }
        });
    });
});
