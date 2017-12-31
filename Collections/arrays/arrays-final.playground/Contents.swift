var evenNumbers: [Int] = [2, 4, 6, 8]

// let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

// evenNumbers = []
print(evenNumbers.isEmpty)

print(evenNumbers.count)
if let first = evenNumbers.first {
  print(first)
} else {
  print("Empty array")
}

if let min = evenNumbers.min() {
  print(min)
}

var firstElement = evenNumbers[0]
print("The first element is: \(firstElement)")

/// evenNumbers[99]

let firstThree = evenNumbers[0...2]
print(firstThree)

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)

var removedElement = evenNumbers.removeLast()
var removedZero = evenNumbers.remove(at: 0)
print(evenNumbers)

evenNumbers[0] = -2
print(evenNumbers)

evenNumbers[0...2] = [-2, 0, 2, 4, 6]
print(evenNumbers)

let remove = evenNumbers.remove(at: 0)
evenNumbers.insert(remove, at: evenNumbers.count)
print(evenNumbers)

evenNumbers.swapAt(1, 2)
print(evenNumbers)

for evenNumber in evenNumbers {
  print(evenNumber)
}

for (index, evenNumber) in evenNumbers.enumerated() {
  print("evenNumbers[\(index)] = \(evenNumber)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
print(firstThreeRemoved)
let lastRemoved = firstThreeRemoved.dropLast()
print(lastRemoved)

let firstThree2 = evenNumbers.prefix(3)
let lastOne = evenNumbers.suffix(1)
print(firstThree2)
print(lastOne)

