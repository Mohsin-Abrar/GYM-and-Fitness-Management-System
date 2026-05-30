using GYM_AND_FITNESS_MANAGEMENT.Data;
using GYM_AND_FITNESS_MANAGEMENT.Models;
using Microsoft.EntityFrameworkCore;

namespace GYM_AND_FITNESS_MANAGEMENT.Services
{
    public class WorkOutServices
    {
        private readonly ApplicationDbContext _context;

        public WorkOutServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Exercises>> GetAllExercisesAsync()
            => await _context.Exercises.ToListAsync();

        public async Task AddWorkOutAsync(Workout workout)
        {
            _context.workout.Add(workout);
            await _context.SaveChangesAsync();
        }

        public async Task<List<Workout>> GetUserWorkoutsAsync(int userId)
            => await _context.workout
                .Where(w => w.UserId == userId)
                .OrderByDescending(w => w.Id)
                .Take(10)
                .ToListAsync();

        public async Task<int> GetTotalWorkoutsAsync(int userId)
            => await _context.workout.Where(w => w.UserId == userId).CountAsync();

        public async Task<int> GetTotalExercisesAsync()
            => await _context.Exercises.CountAsync();
    }
}
