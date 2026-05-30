using Microsoft.AspNetCore.SignalR;

namespace GYM_AND_FITNESS_MANAGEMENT.Models
{
    public class CaloriesEntry
    {
        public int Id { get; set; }
        public int UserId { get; set; } 
        public string? FoodName { get; set; }
        public double Quantity { get; set; }
        public double CaloriesPerUnit { get; set; }
        public string ?Unit { get; set; }
        public double TotalCalories => CaloriesPerUnit * Quantity;
    }
}