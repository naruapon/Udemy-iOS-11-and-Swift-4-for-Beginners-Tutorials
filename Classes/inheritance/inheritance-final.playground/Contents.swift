struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student: Person {
  var grades: [Grade] = []

  func recordGrade(_ grade: Grade) {
    grades.append(grade)
  }
}

let john = Person(firstName: "John", lastName: "Appleseed")
let jane = Student(firstName: "Jane", lastName: "Appleseed")
john.firstName
jane.firstName

let history = Grade(letter: "B", points: 9.0, credits: 3.0)
jane.recordGrade(history)
// john.recordGrade(history)

class BandMember: Student {
  var minimumPracticeTime = 2
}

class OboePlayer: BandMember {
  override var minimumPracticeTime: Int {
    get {
      return super.minimumPracticeTime * 2
    }
    set {
      super.minimumPracticeTime = newValue / 2
    }
  }
}

func phonebookName(_ person: Person) -> String {
  return "\(person.lastName), \(person.firstName)"
}

let person = Person(firstName: "Ray", lastName: "Wenderlich")
let oboePlayer = OboePlayer(firstName: "Vicki", lastName: "Wenderlich")
phonebookName(person)
phonebookName(oboePlayer)

var hallMonitor = Student(firstName: "Jill", lastName: "Bananapeel")
hallMonitor = oboePlayer
(oboePlayer as Student).firstName
hallMonitor = jane
let oboe2 = hallMonitor as? OboePlayer
if let oboe2 = oboe2 {
  print(oboe2.minimumPracticeTime)
} else {
  print("Not an oboe player")
}

class StudentAthlete: Student {

  var failedClasses: [Grade] = []

  override func recordGrade(_ grade: Grade) {
    super.recordGrade(grade)
    if grade.letter == "F" {
      failedClasses.append(grade)
    }
  }

  var isEligible: Bool {
    return failedClasses.count < 3
  }

}

var athlete = StudentAthlete(firstName: "Jon", lastName: "Snow")
athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
athlete.isEligible
athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
athlete.recordGrade(Grade(letter: "F", points: 0, credits: 0))
athlete.isEligible





