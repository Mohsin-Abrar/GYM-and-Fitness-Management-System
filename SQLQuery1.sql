use GymManagementSystem;

select * from users;

ALTER TABLE users
ADD Role NVARCHAR(20) NOT NULL DEFAULT 'User';

INSERT INTO users (Name, Age, Email, Password, Role)
VALUES ('Admin', 0, 'admin@gym.com', 'admin123', 'Admin');

CREATE TABLE FoodItems (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    CaloriesPerUnit FLOAT NOT NULL,
    Unit NVARCHAR(20) NOT NULL
)

-- Fruits
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Banana', 0.89, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Apple', 0.52, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Mango', 0.60, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Orange', 0.47, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Grapes', 0.67, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Watermelon', 0.30, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Strawberry', 0.33, 'grams');

-- Vegetables
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Potato', 0.77, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Broccoli', 0.34, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Spinach', 0.23, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Carrot', 0.41, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Onion', 0.40, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Tomato', 0.18, 'grams');

-- Grains & Staples
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('White Rice (cooked)', 1.30, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Brown Rice (cooked)', 1.11, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('White Bread', 2.65, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Roti (Chapati)', 2.97, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Oats (cooked)', 0.68, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Pasta (cooked)', 1.31, 'grams');

-- Proteins
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Chicken Breast (cooked)', 1.65, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Beef (cooked)', 2.50, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Egg', 78.00, 'piece');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Tuna (canned)', 1.16, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Salmon (cooked)', 2.08, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Lentils (cooked)', 1.16, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Chickpeas (cooked)', 1.64, 'grams');

-- Dairy
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Whole Milk', 0.61, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Cheddar Cheese', 4.02, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Yogurt (plain)', 0.59, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Butter', 7.17, 'grams');

-- Snacks & Fast Food
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Burger (beef)', 295.00, 'piece');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Pizza Slice', 285.00, 'piece');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('French Fries', 3.12, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Chocolate Bar', 5.46, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Potato Chips', 5.36, 'grams');

-- Drinks
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Orange Juice', 0.45, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Coca Cola', 0.42, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Whole Milk Tea (with sugar)', 0.38, 'grams');

-- Nuts & Oils
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Almonds', 5.79, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Peanuts', 5.67, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Olive Oil', 8.84, 'grams');
INSERT INTO FoodItems (Name, CaloriesPerUnit, Unit) VALUES ('Peanut Butter', 5.88, 'grams');






CREATE TABLE Exercises (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    MuscleGroup NVARCHAR(100) NOT NULL
)


-- Chest
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Bench Press', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Incline Bench Press', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Decline Bench Press', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Push Up', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Chest Fly', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Cable Crossover', 'Chest');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Dumbbell Press', 'Chest');

-- Back
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Pull Up', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Lat Pulldown', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Bent Over Row', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Seated Cable Row', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Deadlift', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('T-Bar Row', 'Back');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Single Arm Dumbbell Row', 'Back');

-- Shoulders
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Overhead Press', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Lateral Raise', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Front Raise', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Arnold Press', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Rear Delt Fly', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Face Pull', 'Shoulders');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Shrugs', 'Shoulders');

-- Biceps
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Barbell Curl', 'Biceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Dumbbell Curl', 'Biceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Hammer Curl', 'Biceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Preacher Curl', 'Biceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Cable Curl', 'Biceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Concentration Curl', 'Biceps');

-- Triceps
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Tricep Pushdown', 'Triceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Skull Crusher', 'Triceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Overhead Tricep Extension', 'Triceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Close Grip Bench Press', 'Triceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Tricep Dips', 'Triceps');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Cable Overhead Extension', 'Triceps');

-- Legs
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Squat', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Leg Press', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Lunges', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Leg Extension', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Leg Curl', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Romanian Deadlift', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Calf Raise', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Hack Squat', 'Legs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Sumo Squat', 'Legs');

-- Core / Abs
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Plank', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Crunches', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Leg Raise', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Russian Twist', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Cable Crunch', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Mountain Climbers', 'Abs');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Hanging Knee Raise', 'Abs');

-- Cardio
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Treadmill Run', 'Cardio');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Cycling', 'Cardio');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Jump Rope', 'Cardio');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Rowing Machine', 'Cardio');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Stair Climber', 'Cardio');
INSERT INTO Exercises (Name, MuscleGroup) VALUES ('Burpees', 'Cardio');


use GymManagementSystem;

CREATE TABLE Workout (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId INT,
    ExerciseName NVARCHAR(100) NOT NULL,
   sets int NOT NULL,
    reps int NOT NULL
)

drop table Workout;


select * from Workout;







CREATE TABLE CaloriesEntries (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId INT,
    FoodName NVARCHAR(100),
    Quantity FLOAT,
    CaloriesPerUnit FLOAT,
    Unit NVARCHAR(50),
    TotalCalories AS (CaloriesPerUnit * Quantity)  -- computed column
)
SELECT * FROM CaloriesEntries
DROP TABLE CaloriesEntries;



ALTER TABLE dbo.Members
ADD PhoneNumber NVARCHAR(20) NULL,
    MembershipType NVARCHAR(50) NULL,
    Fee INT NOT NULL DEFAULT 0;

    SELECT * FROM dbo.Members;


    -- Verify the table structure
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Members';