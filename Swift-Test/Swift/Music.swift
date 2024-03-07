import Foundation
import SwiftData

@Model
class Music{
    var name: String
    var collection: String
    var date: Date
    var value: Double
    
    init(name: String, collection: String, date: Date, value: Double) {
        self.name = name
        self.collection = collection
        self.date = date
        self.value = value
    }
}