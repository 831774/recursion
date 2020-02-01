
import Foundation

public class Recursor {

	private var depthLimit: Int?
	public var currentDepth: Int = 0


	public init(depthLimit: Int? = nil) {
		self.depthLimit = depthLimit
	}

	/*
		Recurses through any `recursive`–conforming object.
		
		node - the root node from which to begin recrusing.
		handler - the block to be executed for every node.

		Return `true` to continue recursing and `false` to stop.
	*/
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