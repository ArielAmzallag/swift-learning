struct Binding<T> {
    private let get: () -> T
    private let set: (T) -> Void
    
    init(get: @escaping () -> T, set: @escaping (T) -> Void) {
        self.get = get
        self.set = set
    }
    
    var wrappedValue: T {
        get { get() }
        set { set(newValue) }
    }
}