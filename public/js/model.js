jQuery(function ($) {
    var fx = {
        "initModel": function () {
            if (jQuery('.model-window').length == 0) {
                jQuery('<div>').attr('id', 'jQuery-overlay').appendTo('body');
                return jQuery('<div>').addClass('model-window').appendTo('body');
            } else {
                return jQuery('.model-window');
            }
        }

    };

    jQuery('.clickme').click(function () {
        var id = jQuery(this).attr('data_id');
        //console.log(id);
       var modal = fx.initModel();
    });
});
