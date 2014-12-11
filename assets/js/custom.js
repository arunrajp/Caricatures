function getTemplates(element) {
    var categoryName = jQuery(element).attr('data-category');

    jQuery('[id$=progress]').modal('show');
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
        },
        failure: function (response) {
            jQuery('[id$=progress]').modal('hide');
            jQuery('[id$=divSelCategoryAlert]').hide();
        }
    });
}