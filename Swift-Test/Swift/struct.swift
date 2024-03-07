struct Simple {
  let title: String
  let description: String
}

let simple = Simple(title: "any title", description: "any description")
print(simple.title) 
print(simple.description) 

struct Auth {
  var name: String
}

var auth1 = Auth(name: "any initial name for people 1")
var auth2 = auth1

auth1.name = "any other name"

print(auth1.name) 
print(auth2.name) 