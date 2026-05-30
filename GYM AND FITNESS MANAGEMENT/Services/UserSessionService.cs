namespace GYM_AND_FITNESS_MANAGEMENT.Services
{
    public class UserSessionService
    {
        private static int _userId;
        private static string? _userEmail;
        private static string? _userName;
        private static string _role = "User";
        private static bool _isLoggedIn = false;

        public int UserId => _userId;
        public string? UserEmail => _userEmail;
        public string? UserName => _userName;
        public string Role => _role;
        public bool IsLoggedIn => _isLoggedIn;
        public bool IsAdmin => _role == "Admin";

        public void Login(int userId, string email, string name, string role)
        {
            _userId = userId;
            _userEmail = email;
            _userName = name;
            _role = role;
            _isLoggedIn = true;
        }

        public void Logout()
        {
            _userId = 0;
            _userEmail = null;
            _userName = null;
            _role = "User";
            _isLoggedIn = false;
        }
    }
}
