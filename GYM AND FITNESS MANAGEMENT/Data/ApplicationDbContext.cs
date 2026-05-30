using GYM_AND_FITNESS_MANAGEMENT.Models;
using Microsoft.EntityFrameworkCore;

namespace GYM_AND_FITNESS_MANAGEMENT.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

        public DbSet<User> users { get; set; }
        public DbSet<FoodItems> FoodItems { get; set; }
        public DbSet<Exercises> Exercises { get; set; }
        public DbSet<Workout> workout { get; set; }
        public DbSet<CaloriesEntry> CaloriesEntries { get; set; }
        public DbSet<AddMember> Members { get; set; }
    }
}
