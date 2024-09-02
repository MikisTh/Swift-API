import Foundation
import SwiftData

@Model
class BookReceipe {
    var title: String
    var author: String
    var publisher: String
    var summary: String
    
    init(title: String, author: String, publisher: String, summary: String = "") {
        self.title = title
        self.author = author
        self.publisher = publisher
        self.summary = summary
    }
}

@ModelContainer

import SwiftUI
import SwiftData

@main
struct SwiftData_CRUDApp: App {
  var body: some Scene {
    WindowGroup {
      BookReceipeListView()
    }
    .modelContainer(for: BookReceipe.self)
  }
}
