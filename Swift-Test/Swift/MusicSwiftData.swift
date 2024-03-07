import SwiftUI
import SwiftData

@main
struct MusicSwiftDataApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Music.self])
    }
}