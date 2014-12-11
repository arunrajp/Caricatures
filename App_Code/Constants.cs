public static class Constants
{
    /// <summary>
    /// API Keys
    /// </summary>
    public static class Keys
    {
        public static string APIKey = "API Key";
        public static string APISecret = "API Secret";
        public static string CloudName = "Cloud Name";
    }

    /// <summary>
    /// HTML Templates
    /// </summary>
    public static class Templates
    {
        public static string CartCategoryActiveItem = "<a href='javascript:void(0);' data-category='{0}' class='list-group-item active' onclick='getTemplates(this)'> <h4 class='list-group-item-heading'>{0}</h4> </a>";
        public static string CartCategoryInactiveItem = "<a href='javascript:void(0);' data-category='{0}' class='list-group-item' onclick='getTemplates(this)'> <h4 class='list-group-item-heading'>{0}</h4> </a>";
        public static string CartTemplateItem = "<div class='col-sm-6 col-md-4'> <div class='thumbnail'> <img src='{0}' data-image-url='{1}' style='height: 200px; width: 100%; display: block;' /> <div class='caption'> <h3>{2}</h3> <p>{2}</p> <p><a href='javascript:void(0);' class='btn btn-primary' role='button'>Buy</a></p> </div> </div> </div>";
    }

    /// <summary>
    /// Thumbnail Image Attributes
    /// </summary>
    public static class ThumbnailImage
    {
        public static string ResizeMode = "c_scale";
        public static string ResizeWidth = "w_200";
        public static string ThumbnailTransform = string.Concat(ResizeMode, ",", ResizeWidth);
    }
}