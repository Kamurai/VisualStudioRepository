namespace MVC.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class OracleConnectionString : DbContext
    {
        public DbSet<OracleTest> Colors { get; set; }

        public OracleConnectionString()
            : base("name=OracleConnectionString")
        {
        }
        
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("TEST");
        }
         
    }
}