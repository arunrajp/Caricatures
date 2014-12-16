function getTemplates(element) {
    /*The Category on which the User Clicked*/
    var categoryName = jQuery(element).attr('data-category');

    /*Show Progress Modal*/
    jQuery('[id$=progress]').modal('show');

    /*Set the Currently Clicked Category as "Active"*/
    jQuery(document).find('[class^=list-group-item]').each(
        function (index, element) {
            if (jQuery(element).prop('tagName') === 'A')
                if (jQuery(element).attr('data-category') === categoryName)
                    jQuery(element).attr('class', 'list-group-item active');
                else
                    jQuery(element).attr('class', 'list-group-item');
        }
    );

    /*Fetch the Images from Cloudinary*/
    jQuery.ajax({
        type: "POST",
        url: "CaricatureCart.aspx/GetTemplates",
        data: '{categoryName: "' + categoryName + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            /*Fill the HTML Response into the Template Grid*/
            jQuery('[id$=divTemplates]').html(response.d);

            /*Hide the Modal as well as the Intial Message*/
            jQuery('[id$=progress]').modal('hide');
            jQuery('[id$=divSelCategoryAlert]').hide();

            /*Apply "Magnify Popup" so that Users can click an Image to View it Larger*/
            jQuery('.large-template').magnificPopup({
                type: 'image'
            });

            /*Uses the "PerfectScrollbar" js to style the Scrollbars of Various Thumbnails*/
            jQuery('.thumbnail').perfectScrollbar({
                suppressScrollX: true
            });
        },
        failure: function (response) {
            jQuery('[id$=progress]').modal('hide');
            jQuery('[id$=divSelCategoryAlert]').hide();
        }
    });
}