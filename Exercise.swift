// Write your code below 💪
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init (name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name 
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

//Exercise instances
var sitUp = Exercise(name: "Sit up", muscleGroups: ["Stomach", "Sides"], reps: 10, sets: 3) 

var chestWork = Exercise(name: "Bench Press", muscleGroups: ["Chest", "Upper Body"], reps: 15, sets: 4)

//Regimen Structure to keep track of daily exercises 
struct regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

    init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

//Function prints daily routine
func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and you're going to:")

//Cylcles trough array of exercises and prints quote
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s")
    }
  }

}

var mondayRegimen = regimen(dayOfWeek: "Monday", exercises: [sitUp])
var tuesdayRegimen = regimen(dayOfWeek: "Tuesday", exercises: [chestWork])
var wednesdayRegimen = regimen(dayOfWeek: "Wednesday", exercises: [sitUp])
var thursdayRegimen = regimen(dayOfWeek: "Thursday", exercises: [chestWork])

//mondayRegimen.printExercisePlan()
//tuesdayRegimen.printExercisePlan()
//wednesdayRegimen.printExercisePlan()
//thursdayRegimen.printExercisePlan()
