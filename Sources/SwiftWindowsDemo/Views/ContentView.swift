struct ContentView: View {
    @State var user: User
    let userController: UserController
    
    init(user: User, userController: UserController) {
        self._user = State(user)
        self.userController = userController
    }
    
    func render() {
        TextView(text: "Welcome to our SwiftUI-like demo!").render()
        UserView(user: user).render()
        
        print("\nOptions:")
        print("1. Update user's age")
        print("2. Exit")
        
        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                print("Enter new age:")
                if let input = readLine(), let newAge = Int(input) {
                    user = userController.updateAge(user: user, newAge: newAge)
                    print("Age updated!")
                }
            case 2:
                print("Exiting...")
                exit(0)
            default:
                print("Invalid option")
            }
        }
    }
}