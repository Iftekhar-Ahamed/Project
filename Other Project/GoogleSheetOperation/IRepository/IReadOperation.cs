using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoogleSheetOperation.IRepository
{
    internal interface IReadOperation
    {
        string GetSingleCell(string range);
        List<List<string>> GetMultipleCell(string range);
    }
}
