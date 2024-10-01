@propertyWrapper
struct State<T> {
    var wrappedValue: T {
        didSet {
            listener?(wrappedValue)
        }
    }
    
    var projectedValue: Binding<T> {
        Binding(
            get: { self.wrappedValue },
            set: { self.wrappedValue = $0 }
        )
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.wrappedValue = value
    }
    
    mutating func addListener(_ listener: @escaping (T) -> Void) {
        self.listener = listener
    }
}