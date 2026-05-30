using GYM_AND_FITNESS_MANAGEMENT.Data;
using GYM_AND_FITNESS_MANAGEMENT.Models;
using Microsoft.EntityFrameworkCore;


namespace GYM_AND_FITNESS_MANAGEMENT.Services
{
    public class UserService
    {
        private readonly ApplicationDbContext _context;

        public UserService(ApplicationDbContext context)
        {
            _context = context;
        }

        // WRITE to database
        public async Task SignupAsync(User user)
        {
            _context.users.Add(user);
            await _context.SaveChangesAsync();
        }

        // READ from database
        public async Task<List<User>> GetUsersAsync()
        {
            return await _context.users.ToListAsync();
        }
    }
}
