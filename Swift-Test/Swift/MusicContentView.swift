import SwiftUI
import SwiftData

struct MusicContentView: View {
    
    @Environment(\.modelContext) var context
    @State private var isShowingItemSheet = false
    @Query(sort: \Expanse.date) var musics : [Music]
    @State private var musicToEdit: Music?
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(musics) { music in
                    MusicCell(music: music)
                        .onTapGesture {
                            musicToEdit = music
                        }
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        context.delete(musics[index])
                    }
                })
            }
            .navigationTitle("Musics")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingItemSheet) { AddMusicSheet() }
            .sheet(item: $musicToEdit) { music in
            UpdateMusicSheet(music : music)
            }
            .toolbar {
                if !musics.isEmpty {
                    Button("Add Music" , systemImage: "plus") {
                        isShowingItemSheet = true
                    }
                }
            }
            .overlay {
                if musics.isEmpty {
                    ContentUnavailableView(label: {
                        Label("No Musics", systemImage: "list.bullet.rectangle.portraint")
                    }, description: {
                        Text("Start adding musics to see your list.")
                    }, actions: {
                        Button("Add Music") { isShowingItemSheet = true}
                    })
                    .offset(y: -60)
                }
            }
        }
    }
}

#Preview { MusicContentView() }

struct MusicCell: View {
    let music: Music
    var body: some View {
        HStack{
            Text(music.date, format: .dateTime.month(.abbreviated).day())
                .frame(width: 70, alignment: .leading)
            Text(music.name)
            Spacer()
            Text(music.value, format: .currency(code: "USD"))
        }
    }
}

struct AddMusicSheet: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var collection: String = ""
    @State private var date: Date = .now
    @State private var value: Double = 0
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Music Name", text: $name)
                TextField("Music Collection", text: $name)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Value", value: $value, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("New Music")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Save") {
                        let music = Music(name: name, collection: collection, date: date, value: value)
                        context.insert(music)
                        dismiss()
                    }
                }
            }
        }
    }
}
struct UpdateMusicSheet: View {
    @Environment(\.dismiss) private var dismiss
    @Bindable var music: Music
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Music Name", text: $music.name)
                TextField("Music Colection", text: $music.name)
                DatePicker("Date", selection: $music.date, displayedComponents: .date)
                TextField("Value", value: $music.value, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("New Music")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }
}