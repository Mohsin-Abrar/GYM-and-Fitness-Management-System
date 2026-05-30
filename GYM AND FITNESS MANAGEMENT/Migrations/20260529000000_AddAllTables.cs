using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GYM_AND_FITNESS_MANAGEMENT.Migrations
{
    /// <inheritdoc />
    public partial class AddAllTables : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // Add missing columns to Members table
            migrationBuilder.AddColumn<int>(
                name: "PhoneNumber",
                table: "Members",
                schema: "dbo",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "MembershipType",
                table: "Members",
                schema: "dbo",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Fee",
                table: "Members",
                schema: "dbo",
                type: "int",
                nullable: false,
                defaultValue: 0);

            // Create FoodItems table
            migrationBuilder.CreateTable(
                name: "FoodItems",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CaloriesPerUnit = table.Column<double>(type: "float", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table => { table.PrimaryKey("PK_FoodItems", x => x.Id); });

            // Create Exercises table
            migrationBuilder.CreateTable(
                name: "Exercises",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MuscleGroup = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table => { table.PrimaryKey("PK_Exercises", x => x.Id); });

            // Create workout table
            migrationBuilder.CreateTable(
                name: "workout",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<int>(type: "int", nullable: false),
                    ExerciseName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Sets = table.Column<int>(type: "int", nullable: false),
                    Reps = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table => { table.PrimaryKey("PK_workout", x => x.Id); });

            // Create CaloriesEntries table
            migrationBuilder.CreateTable(
                name: "CaloriesEntries",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<int>(type: "int", nullable: false),
                    FoodName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Quantity = table.Column<double>(type: "float", nullable: false),
                    CaloriesPerUnit = table.Column<double>(type: "float", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table => { table.PrimaryKey("PK_CaloriesEntries", x => x.Id); });

            // Seed food items
            migrationBuilder.InsertData("FoodItems", new[] { "Name", "CaloriesPerUnit", "Unit" }, new object[,]
            {
                { "Chicken Breast",    165.0,  "100g"   },
                { "Rice (cooked)",      130.0,  "100g"   },
                { "Egg",                78.0,   "piece"  },
                { "Banana",             89.0,   "piece"  },
                { "Whole Milk",         61.0,   "100ml"  },
                { "Oats",               389.0,  "100g"   },
                { "Bread (White)",      265.0,  "100g"   },
                { "Apple",              52.0,   "piece"  },
                { "Almonds",            579.0,  "100g"   },
                { "Tuna (canned)",      116.0,  "100g"   },
                { "Sweet Potato",       86.0,   "100g"   },
                { "Greek Yogurt",       59.0,   "100g"   },
                { "Salmon",             208.0,  "100g"   },
                { "Broccoli",           34.0,   "100g"   },
                { "Peanut Butter",      588.0,  "100g"   },
                { "Orange",             47.0,   "piece"  },
                { "Beef (lean)",        250.0,  "100g"   },
                { "Cottage Cheese",     98.0,   "100g"   },
                { "Lentils (cooked)",   116.0,  "100g"   },
                { "Protein Shake",      120.0,  "scoop"  }
            });

            // Seed exercises
            migrationBuilder.InsertData("Exercises", new[] { "Name", "MuscleGroup" }, new object[,]
            {
                { "Bench Press",            "Chest"      },
                { "Incline Bench Press",    "Chest"      },
                { "Push-Ups",               "Chest"      },
                { "Pull-Ups",               "Back"       },
                { "Deadlift",               "Back"       },
                { "Barbell Row",            "Back"       },
                { "Lat Pulldown",           "Back"       },
                { "Squat",                  "Legs"       },
                { "Leg Press",              "Legs"       },
                { "Lunges",                 "Legs"       },
                { "Leg Extension",          "Quadriceps" },
                { "Leg Curl",               "Hamstrings" },
                { "Calf Raises",            "Calves"     },
                { "Overhead Press",         "Shoulders"  },
                { "Lateral Raises",         "Shoulders"  },
                { "Front Raises",           "Shoulders"  },
                { "Barbell Curl",           "Biceps"     },
                { "Dumbbell Curl",          "Biceps"     },
                { "Hammer Curl",            "Biceps"     },
                { "Tricep Dips",            "Triceps"    },
                { "Tricep Pushdown",        "Triceps"    },
                { "Skull Crushers",         "Triceps"    },
                { "Plank",                  "Core"       },
                { "Crunches",               "Core"       },
                { "Russian Twists",         "Core"       },
                { "Romanian Deadlift",      "Hamstrings" },
                { "Hip Thrust",             "Glutes"     },
                { "Face Pulls",             "Rear Delts" },
                { "Cable Fly",              "Chest"      },
                { "Seated Row",             "Back"       }
            });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(name: "FoodItems");
            migrationBuilder.DropTable(name: "Exercises");
            migrationBuilder.DropTable(name: "workout");
            migrationBuilder.DropTable(name: "CaloriesEntries");
        }
    }
}
