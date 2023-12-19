using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GoogleSheetOperation.Authentication;
using Google.Apis.Sheets.v4;
using Google.Apis.Sheets.v4.Data;
using static Google.Apis.Requests.BatchRequest;
using GoogleSheetOperation.IRepository;

namespace GoogleSheetOperation.Repository
{
    internal class ReadOperation:IReadOperation
    {
        private readonly AuthenticationKey _key;

        public ReadOperation(AuthenticationKey key) { 
            _key = key;
        }

        public string GetSingleCell(string range)
        {
            string cellValue=string.Empty;
            SpreadsheetsResource.ValuesResource.GetRequest request = _key.credential.Spreadsheets.Values.Get(_key.spreadsheetId, range);
            var response = request.Execute();

                    if (response.Values != null && response.Values.Count > 0)
                    {
                        // Data is present in the response
                        cellValue = response.Values[0][0].ToString()??string.Empty;
                    }

            return cellValue??string.Empty;
        }



        public List<List<string>>GetMultipleCell(string range)
        {
            List<List<string>> cells = new List<List<string>>();
            SpreadsheetsResource.ValuesResource.GetRequest request = _key.credential.Spreadsheets.Values.Get(_key.spreadsheetId, range);
            ValueRange response = request.Execute();


            IList<IList<object>> values = response.Values;

            if (values != null && values.Count > 0)
            {
                    for (int rowIdx = 0; rowIdx < values.Count; rowIdx++)
                    {
                        IList<object> row = values[rowIdx];
                        List<string> _row= new List<string>();



                        for (int colIdx = 0; colIdx < row.Count; colIdx++)
                        {
                                    if(colIdx==0 || colIdx == 15) {
                                            object cellValue = row[colIdx];
                                            string val = cellValue.ToString() ?? string.Empty;
                                            Console.WriteLine(val);
                                            _row.Add(val);
                                    }

                        }


                        cells.Add(_row);
                    }
            }
            else
            {
                Console.WriteLine("No data found in the specified range.");
            }

            return cells;
        }
    }
}
