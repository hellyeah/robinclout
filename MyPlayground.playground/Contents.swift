import Foundation

let age: UInt8 = 32
MemoryLayout.size(ofValue: age)
MemoryLayout<UInt8>.size
UInt8.min
UInt8.max

let height: Int8 = 72
MemoryLayout.size(ofValue: height)
MemoryLayout<Int8>.size
Int8.min
Int8.max

let weight: Float = 154.5
MemoryLayout.size(ofValue: weight)
MemoryLayout<Float>.size
Float.leastNormalMagnitude
Float.greatestFiniteMagnitude


let earthRadius: Double = 3958.8
MemoryLayout.size(ofValue: earthRadius)
MemoryLayout<Double>.size
Double.leastNormalMagnitude
Double.greatestFiniteMagnitude

let ageBinary: UInt8 = 0b0010_0000

























FileManager.documentDirectoryURL.path


let remindersDataURL = URL(fileURLWithPath: "Reminders", relativeTo: FileManager.documentDirectoryURL)

let stringURL = FileManager.documentDirectoryURL.appendingPathComponent("String").appendingPathExtension("txt")

stringURL.path


let challengeString: String = "Challenge"
let challengeURL: URL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL)

let challengeStringURL = challengeURL.appendingPathExtension("txt")

challengeStringURL.lastPathComponent




//challengeString = "Challenge"
//challengeURL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL)
//
//let challengeStringURL = challengeURL.appendingPathExtension("txt")

