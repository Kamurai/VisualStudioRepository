using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace MVC.Models
{
    using System;
    using System.Collections.Generic;

    public partial class OracleTest
    {
        [Key]
        public int Indext { get; set; }
        public string Color { get; set; }
    }
}
//<add assembly="Oracle.DataAccess, Version=4.121.2.0, Culture=neutral, PublicKeyToken=89b483f429c47342" />