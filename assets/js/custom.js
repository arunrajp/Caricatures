function getTemplates(element) {
    var categoryName = jQuery(element).attr('data-category');

    jQuery('[id$=progress]').modal('show');

    jQuery(document).find('[class^=list-group-item]').each(
        function (index, element) {
            if (jQuery(element).prop('tagName') === 'A')
                if (jQuery(element).attr('data-category') === categoryName)
                    jQuery(element).attr('class', 'list-group-item active');
                else
                    jQuery(element).attr('class', 'list-group-item');
        }
    );

    jQuery.ajax({
        type: "POST",
        url: "CaricatureCart.aspx/GetTemplates",
        data: '{categoryName: "' + categoryName + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            jQuery('[id$=divTemplates]').html(response.d);
            jQuery('[id$=progress]').modal('hide');
            jQuery('[id$=divSelCategoryAlert]').hide();
            jQuery('.large-template').magnificPopup({
                type: 'image'
            });
        },
        failure: function (response) {
            jQuery('[id$=progress]').modal('hide');
            jQuery('[id$=divSelCategoryAlert]').hide();
        }
    });
}