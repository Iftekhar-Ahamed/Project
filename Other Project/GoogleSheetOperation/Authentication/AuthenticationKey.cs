using Google.Apis.Auth.OAuth2;
using Google.Apis.Sheets.v4;
using Google.Apis.Sheets.v4.Data;
using System;
using System.Security.Cryptography.X509Certificates;

namespace GoogleSheetOperation.Authentication
{
    internal class AuthenticationKey
    {
        public SheetsService credential = new SheetsService() ;
        public string spreadsheetId = "1VnLMhJ8H41BomLsAEOpHPItfTTv8Wcw0mDYNHW1C_C8";

        public AuthenticationKey()
        {
            CreateCredential();
        }

        public void CreateCredential()
        {

            var serviceAccountEmail = "";
            var certificate = new X509Certificate2("D:\\GITHUB\\GoogleSheetOperation\\abstract-stage-398811-ed413e41a3a1.p12", "notasecret", X509KeyStorageFlags.Exportable);

            
            
            
            // Create a credential
            ServiceAccountCredential serviceCredential = new ServiceAccountCredential(
                                                         new ServiceAccountCredential.Initializer(serviceAccountEmail)
                                                         {
                                                            Scopes = new[] { SheetsService.Scope.Spreadsheets }
                                                         }.FromCertificate(certificate));




            // Create a Sheets API service
            var service = new SheetsService(
                          new Google.Apis.Services.BaseClientService.Initializer()
                          {
                              HttpClientInitializer = serviceCredential,
                              ApplicationName = "NONE",
                          });

            credential = service;
        }
    }
}
