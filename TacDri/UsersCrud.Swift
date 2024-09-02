import SwiftData


func createUser(name: String, age: Int) -> Bool {
    let db = Database()
    let data: [String: Any] = ["name": name, "age": age]
    return db.insert("users", data: data)
}

func readUsers() -> [[String: Any]] {
    let db = Database()
    return db.query("SELECT * FROM users")
}

func updateUser(name: String, newAge: Int) -> Bool {
    let db = Database()
    let data: [String: Any] = ["age": newAge]
    let condition = "name = '\(name)'"
    return db.update("users", data: data, condition: condition)
}

func deleteUser(age: Int) -> Bool {
    let db = Database()
    let condition = "age < \(age)"
    return db.delete("users", condition: condition)
}


let userCreated = createUser(name: "John", age: 30)
print("User created:", userCreated)

let users = readUsers()
print("Users:", users)

let userUpdated = updateUser(name: "John", newAge: 35)
print("User updated:", userUpdated)

let usersDeleted = deleteUser(age: 25)
print("Users deleted:", usersDeleted)
