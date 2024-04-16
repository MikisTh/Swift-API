import SwiftUI

struct ContentView: View {
    
    @State var musics = [Music]()
    
    var body: some View {
        List(musics) { music in
            Text("\(music.author)")
                
            VStack(alignment: .leading) {
                Text("\(music.title)")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding(.bottom)
                HStack{
                    Text("\(music.author)")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("\(music.album)")
                        .font(.body)
                        .fontWeight(.semibold)
                }
                Spacer()
            }
        }
           
            .onAppear() {
                Api().loadData { (musics) in
                    self.musics = musics
                }
            }.navigationTitle("Music List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
}