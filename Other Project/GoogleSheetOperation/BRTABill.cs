using GoogleSheetOperation.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace GoogleSheetOperation;

using GoogleSheetOperation.IRepository;
using OfficeOpenXml;

internal class BRTABill
{
    private IReadOperation readOperation;
    public BRTABill(IReadOperation _readOperation) {
        readOperation = _readOperation;
    }
    public void cal()
    {
        while (Console.ReadLine() == "ok")
        {
            string connectionString = "Server=10.209.99.244;Database=iBOSDDD;User=isukisespts3vapp8dt;Password=wsa0str1vpo@8d5ws;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string loc = "AIT_&_Fit Header!F2:F261";
                var result = readOperation.GetMultipleCell(loc);
                string s = "";


                foreach (var row in result)
                {
                    foreach (var col in row)
                    {
                        //string sqlQuery = "select a.intAccountId,a.intBusinessUnitId, a.strBusinessUnitName,(select ba.intSBUId from fin.tblBusinessArea ba where intBusinessUnitId=a.intBusinessUnitId) as intSBUID,'' as intPlantId,a.intAssetId,a.strAssetCode,a.strAssetName from ast.tblAsset a where a.strAssetName like '%"+col+"%' and a.isActive = 1";
                        string sqlQuery = "select intPlantId from ast.tblAsset where intAssetId = "+col;

                        if (col == "")
                        {
                            Console.Write("Empty cell");
                            continue;
                        }
                        using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                        {
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                
                                var columnNames = new List<string>();
                                for (int i = 0; i < reader.FieldCount; i++)
                                {
                                    columnNames.Add(reader.GetName(i));
                                }

                                // Process rows and columns
                                while (reader.Read())
                                {
                                    for (int i = 0; i < reader.FieldCount; i++)
                                    {
                                        string columnName = columnNames[i];
                                        object columnValue = reader[i];
                                        //s = s + ", " + columnValue;
                                        s = s + col + "," + columnValue;
                                        
                                    }
                                }
                                

                            }
                        }
                       
                    }

                    s += "\n";
                }
                connection.Close();
                Console.WriteLine($"{s}");
                ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
                using (var package = new ExcelPackage())
                {
                    // Add a worksheet
                    var worksheet = package.Workbook.Worksheets.Add("Sheet1");

                    // Your string containing data
                    string data = s;

                    // Split the data into rows
                    string[] rows = data.Split('\n');

                    // Add data to the worksheet
                    int row = 1;
                    foreach (var rowData in rows)
                    {
                        string[] columns = rowData.Split(',');
                        int col = 1;
                        foreach (var cellData in columns)
                        {
                            worksheet.Cells[row, col].Value = cellData.Trim();
                            col++;
                        }
                        row++;
                    }

                    // Save the Excel file
                    var fileInfo = new FileInfo("D:\\GITHUB\\GoogleSheetOperation\\output.xlsx");
                    package.SaveAs(fileInfo);
                }

                Console.WriteLine("Excel file created and saved.");
            }
        
        }
    }
}
