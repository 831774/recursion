# Recursion

A set of interfaces for making it easier to traverse recursive structures.

## How to use
Conform your class to `Recursive`:

```swift
import Recursion

extension MyRecursiveStructure: Recursive {}
```

Create a recursor and pass a handler:

```swift
let myObject = MyRecursiveStructure()
let recursor = Recursor()

recursor.recurse(myObject) { node, depth in

	if node.attribute == myCondition {
		//do something
		return true //keep going
	} else {
		return false //stop recursing
	}

}
```

Optionally limit the depth: 

```swift
let recursor = Recursor(depthLimt: 5)
```