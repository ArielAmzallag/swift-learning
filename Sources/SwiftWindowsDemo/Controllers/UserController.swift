struct UserController {
    func updateAge(user: User, newAge: Int) -> User {
        var updatedUser = user
        updatedUser.age = newAge
        return updatedUser
    }
}