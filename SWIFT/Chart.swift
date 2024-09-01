struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}
Then, initialize an array of ToyShap

var data: [ToyShape] = [
    .init(type: "Cube", count: 5),
    .init(type: "Sphere", count: 4),
    .init(type: "Pyramid", count: 4)
]

import SwiftUI
import Charts


struct BarChart: View {
    var body: some View {
        Chart {
            // Add marks here.
        }
    }
}

Chart {
    BarMark(
        x: .value("Shape Type", data[0].type),
        y: .value("Total Count", data[0].count)
    )
    BarMark(
         x: .value("Shape Type", data[1].type),
         y: .value("Total Count", data[1].count)
    )
    BarMark(
         x: .value("Shape Type", data[2].type),
         y: .value("Total Count", data[2].count)
    )
}