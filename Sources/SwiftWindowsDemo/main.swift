import Foundation

print("SwiftUI-like Demo on Windows")
print("----------------------------")

let initialUser = User(id: UUID(), name: "John Doe", age: 30)
let userController = UserController()
let contentView = ContentView(user: initialUser, userController: userController)

while true {
    contentView.render()
    print("\n")
}