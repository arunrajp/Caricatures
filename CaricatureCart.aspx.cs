using System;
using System.Web.UI.HtmlControls;

public partial class CaricatureCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaturesCloudinaryManager cloudinaryManager = new CaricaturesCloudinaryManager();

        string cartCategoryList = string.Empty;
        foreach (string category in cloudinaryManager.CaricaturesAccount.ListTags().Tags)
            if (string.IsNullOrEmpty(cartCategoryList))
                cartCategoryList +=
                    string.Format(
                        Constants.Templates.CartCategoryActiveItem,
                        category
                    );
            else
                cartCategoryList +=
                    string.Format(
                        Constants.Templates.CartCategoryInactiveItem,
                        category
                    );

        setInnerHTML(divCategories, cartCategoryList);
    }

    #region Helper Methods
    void setInnerHTML(HtmlGenericControl container, string markup)
    {
        container.InnerHtml = markup;
    }
    #endregion
}