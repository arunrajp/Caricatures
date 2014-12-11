using System;
using System.Collections.Generic;
using System.Web.Services;
using System.Web.UI.HtmlControls;
using Newtonsoft;
using Newtonsoft.Json;

public partial class CaricatureCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaturesCloudinaryManager cloudinaryManager = new CaricaturesCloudinaryManager();

        string cartCategoryList = string.Empty;
        foreach (string category in cloudinaryManager.CaricaturesAccount.ListTags().Tags)
                cartCategoryList +=
                    string.Format(
                        Constants.Templates.CartCategoryInactiveItem,
                        category
                    );

        setInnerHTML(divCategories, cartCategoryList);
    }

    [WebMethod]
    public static string GetTemplates(string categoryName)
    {
        CaricaturesCloudinaryManager cloudinaryManager = new CaricaturesCloudinaryManager();

        string cartTemplateList = string.Empty;
        foreach (Resource template in cloudinaryManager.CaricaturesAccount.ListResourcesByTag(categoryName).JsonObj.ToObject<Templates>().resources)
            cartTemplateList +=
                    string.Format(
                        Constants.Templates.CartTemplateItem,
                        template.url.Replace("/upload", "/upload/" + Constants.ThumbnailImage.ThumbnailTransform + "/"),
                        template.url,
                        template.public_id
                    );

        return cartTemplateList;
    }

    #region Helper Methods
    void setInnerHTML(HtmlGenericControl container, string markup)
    {
        container.InnerHtml = markup;
    }
    #endregion
}