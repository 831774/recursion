
import Foundation

public class Recursor {

	private var depthLimit: Int?
	public var currentDepth: Int = 0

	public init(depthLimit: Int? = nil) {
		self.depthLimit = depthLimit
	}

	public func recurse<T: Recursive>(_ node: T, handler: (T, Int) -> Bool) {
		let stopRecursing = handler(node, currentDepth)
		if stopRecursing { return }

		if let depthLimit = depthLimit {
            if currentDepth == depthLimit { return }
        }

        currentDepth += 1
        for child in node.children {
            self.recurse(child, handler: handler)
        }
        currentDepth -= 1
	}
}

public protocol Recursive {
	var children: [Self] { get }
}