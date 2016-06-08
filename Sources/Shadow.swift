
public struct Shadow : Equatable {

	public let color:Color
	public let offset:Point
	public let opacity:Unit
	public let radius:Unit

	public init(color:Color = .black, offset:Point = .zero, opacity:Unit = 0.6, radius:Unit = 3) {
		(self.color, self.offset, self.opacity, self.radius) = (color, offset, opacity, radius)
	}
}

// MARK: -

public func == (left:Shadow, right:Shadow) -> Bool {
	return left.color == right.color && left.offset == right.offset && left.opacity == right.opacity && left.radius == right.radius
}