
import Geometry

public struct Shadow : Equatable {
	public let color: Color
	public let offset: Point
	public let radius: Double
}

// MARK: -

public extension Shadow {
	@inlinable init(color: Color = .shadow, radius: Double = 3.0, offset: Point = .zero) {
		(self.color, self.offset, self.radius) = (color, offset, radius)
	}
}
