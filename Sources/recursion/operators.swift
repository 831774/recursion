
//MARK: Operators
infix operator ⇆
public func ⇆<T: Recursive>(lhs: T, rhs: (T, Int) -> Bool) {
    Recursor().recurse(lhs, handler: rhs)
}

infix operator ⇆^
public func ⇆^<T: Recursive>(lhs: T, rhs: (Int, (T, Int) -> Bool)) {
    Recursor(depthLimit: rhs.0).recurse(lhs, handler: rhs.1)
}