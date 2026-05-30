using Microsoft.AspNetCore.SignalR;

namespace GYM_AND_FITNESS_MANAGEMENT.Models
{
    public class Workout
    {
        public int Id { get; set; }
        public int UserId { get; set; } 
        public string? ExerciseName { get; set; }
        public int Sets { get; set; }
        public int Reps { get; set; }   

    }
}