var multiplyClosure: (Int, Int) -> Int

multiplyClosure = { a, b in
  return a * b
}

let result = multiplyClosure(4, 2)

func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

operateOnNumbers(2, 4, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
  return a + b
}
operateOnNumbers(2, 4, operation: addClosure)

operateOnNumbers(4, 2, operation: { $0 / $1 })

let voidClousure: () -> Void = {
  print("Swift Apprentice is awesome")
}
voidClousure()

var counter = 0
let incrementCounter = {
  counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
counter

func countingClosure() -> () -> Int {
  var counter = 0
  let incrementingCounter: () -> Int = {
    counter += 1
    return counter
  }
  return incrementingCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter1()
counter1()
counter2()
counter2()




