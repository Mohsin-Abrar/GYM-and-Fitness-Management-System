namespace GYM_AND_FITNESS_MANAGEMENT.Models
{
    public class User
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int Age { get; set; }
        public string? Email { get; set; }
        public string? Password { get; set; }
        public string Role { get; set; } = "User";  // "Admin" or "User"

        public bool IsAdmin => Role == "Admin";
    }
}
