//: Playground

// Test below - delete tests before commits, or exclude this file in your commits
import MKDataDetector

let dataDetectorService = MKDataDetectorService()

let textBody = "hello world at 9pm tomorrow"
let textBodies = ["event on monday", "movie on wednesday", "payment due next thursday"]

if let results = dataDetectorService.extractDates(withTextBody: textBody) {
    for result in results where result != nil {
        print(result!.source!)
        print(result!.data!)
    }
}

if let combinedResults = dataDetectorService.extractDates(withTextBodies: textBodies) {
    for individualResults in combinedResults where individualResults != nil {
        for result in individualResults! where result != nil {
            print(result!.source!)
            print(result!.data!)
            // do some stuff
        }
    }
}