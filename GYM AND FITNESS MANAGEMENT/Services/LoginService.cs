using GYM_AND_FITNESS_MANAGEMENT.Data;
using GYM_AND_FITNESS_MANAGEMENT.Models;
using Microsoft.EntityFrameworkCore;

namespace GYM_AND_FITNESS_MANAGEMENT.Services
{
    public class LoginService
    {
        private readonly ApplicationDbContext _context;

        public LoginService(ApplicationDbContext context)
        {
            _context = context;
        }

        // Checks email + password in DB, returns the full User row (including Role)
        public async Task<User?> ValidateLogin(string email, string password)
        {
            return await _context.users
                .FirstOrDefaultAsync(u => u.Email == email && u.Password == password);
        }
    }
}
