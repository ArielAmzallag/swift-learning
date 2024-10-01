struct UserView: View {
    let user: User
    
    func render() {
        print("User: \(user.name), Age: \(user.age)")
    }
}