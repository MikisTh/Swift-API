import SwiftUI
import SwiftData

struct BookReceipeListView: View {
  @Environment(\.modelContext) private var context
  @Query(sort: \BookReceipe.title) private var booksReceipes: [BookReceipe]
  @State private var createNewBookReceipe = false
  
  var body: some View {
    NavigationStack{
      Group{
        if booksReceipes.count != 0 {
          List{
            ForEach(booksReceipes) { bookReceipes in
              NavigationLink{
                EditBookView(bookReceipes: bookReceipes)
              } label: {
                HStack(spacing: 16) {
                  VStack(alignment: .leading) {
                    Text(bookReceipes.title).font(.title2)
                    HStack(spacing: 8) {
                      Text(bookReceipes.author).foregroundStyle(.secondary)
                      Text("Editora " + bookReceipes.publisher).foregroundStyle(.secondary)
                    }
                  }
                }
              }
            }
            .onDelete{ indexSet in
              indexSet.forEach{ index in
                let bookReceipes = booksReceipes[index]
                context.delete(bookReceipes)
              }
            }
          }
        }
        else {
          ContentUnavailableView("Insira o seu primeiro livro de receitas!", systemImage: "book")
        }
      }
      .listStyle(.plain)
      .navigationTitle("Meus Livros de Receitas")
      .toolbar {
        Button {
          createNewBookReceipe = true
        } label: {
          Image(systemName: "plus.circle.fill")
            .imageScale(.large)
        }
      }
      .sheet(isPresented: $createNewBookReceipe) {
        NewBookReceipeView()
      }
    }
  }
}

#Preview {
  BookReceipeListView()
    .modelContainer(for: BookReceipe.self, inMemory: true)
}
