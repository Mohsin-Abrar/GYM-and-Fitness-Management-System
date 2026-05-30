namespace GYM_AND_FITNESS_MANAGEMENT.Models
{
    public class AddMember
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int Age { get; set; }
        public string? PhoneNumber { get; set; }
        public string? MembershipType { get; set; }
        public int Fee { get; set; }
    }
}
