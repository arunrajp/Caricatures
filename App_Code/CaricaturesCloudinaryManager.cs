using System.Configuration;
using CloudinaryDotNet;

public class CaricaturesCloudinaryManager
{
    private Cloudinary __caricaturesAccount;
    public Cloudinary CaricaturesAccount
    {
        get { return __caricaturesAccount; }
        set { __caricaturesAccount = value; }
    }
	public CaricaturesCloudinaryManager()
	{
        Initialize();
	}

    void Initialize()
    {
        this.CaricaturesAccount =
            new Cloudinary(
                new Account()
                {
                    ApiKey = ConfigurationManager.AppSettings[Constants.Keys.APIKey],
                    ApiSecret = ConfigurationManager.AppSettings[Constants.Keys.APISecret],
                    Cloud = ConfigurationManager.AppSettings[Constants.Keys.CloudName]
                }
            );
    }
}