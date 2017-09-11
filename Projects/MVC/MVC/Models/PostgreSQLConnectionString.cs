namespace MVC.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class PostgreSQLConnectionString : DbContext
    {
        public DbSet<PostgreSQLTest> Colors { get; set; }

        public PostgreSQLConnectionString()
            : base(nameOrConnectionString: "PostgreSQLConnectionString")
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