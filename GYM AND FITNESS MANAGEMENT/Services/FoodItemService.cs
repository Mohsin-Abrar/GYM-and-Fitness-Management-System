using GYM_AND_FITNESS_MANAGEMENT.Data;
using GYM_AND_FITNESS_MANAGEMENT.Models;
using Microsoft.EntityFrameworkCore;
namespace GYM_AND_FITNESS_MANAGEMENT.Services
{
    public class FoodItemService
    {
        private readonly ApplicationDbContext _context;

        public FoodItemService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<FoodItems>> GetFoodItemsAsync()
        {
            return await _context.FoodItems.ToListAsync();
        }
        public async Task SaveCaloriesAsync(List<CaloriesEntry> entries)
        {
            _context.CaloriesEntries.AddRange(entries);
            await _context.SaveChangesAsync();
        }

        public async Task<double> GetTotalCaloriesAsync(int userId)
        {
            return await _context.CaloriesEntries
                .Where(c => c.UserId == userId)
                .SumAsync(c => c.CaloriesPerUnit * c.Quantity);
        }
    }
}
