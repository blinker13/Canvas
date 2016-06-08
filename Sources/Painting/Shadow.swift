
import Geometry

public struct Shadow : Equatable, Paint {
	public let color: Color
	public let offset: Point
	public let radius: Double
}

public extension Shadow {

	@inlinable var isVisible: Bool { color.isVisible }

	@inlinable init(color: Color = .shadow, radius: Double = 3.0, offset: Point = .zero) {
		(self.color, self.offset, self.radius) = (color, offset, radius)
	}
}
