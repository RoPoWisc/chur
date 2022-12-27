import UIKit

var greeting = "Hello, playground"

for family in UIFont.familyNames.sorted() {
    let names = UIFont.fontNames(forFamilyName: family)
    print("Family: \(family) Font names: \(names)\n\n\n")
}
