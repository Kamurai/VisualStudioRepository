namespace MVC.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class MySQLConnectionString : DbContext
    {
        public DbSet<MySQLTest> Colors { get; set; }

        public MySQLConnectionString()
            : base("name=MySQLConnectionString")
        {
        }
        /*
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
         */
    }
}