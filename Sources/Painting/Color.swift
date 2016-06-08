
import Geometry

public struct Color : Hashable, Paint {

	public enum Components : Hashable {
		case rgb(Double, Double, Double)
		case monochrome(Double)
		case clear
	}

	public let components: Components
	public let opacity: Double
}

public extension Color {

	@inlinable static var clear: Color   { .init(.clear, opacity: .zero) }

	@inlinable static var black: Color   { .init(white: 0.0) }
	@inlinable static var gray: Color    { .init(white: 0.5) }
	@inlinable static var white: Color   { .init(white: 1.0) }

	@inlinable static var shadow: Color   { .init(white: .zero, opacity: 0.33) }

	@inlinable static var red: Color     { .init(red: 1.0, green: 0.0, blue: 0.0) }
	@inlinable static var green: Color   { .init(red: 0.0, green: 1.0, blue: 0.0) }
	@inlinable static var blue: Color    { .init(red: 0.0, green: 0.0, blue: 1.0) }
	@inlinable static var cyan: Color    { .init(red: 0.0, green: 1.0, blue: 1.0) }
	@inlinable static var yellow: Color  { .init(red: 1.0, green: 1.0, blue: 0.0) }
	@inlinable static var magenta: Color { .init(red: 1.0, green: 0.0, blue: 1.0) }
	@inlinable static var orange: Color  { .init(red: 1.0, green: 0.5, blue: 0.0) }
	@inlinable static var purple: Color  { .init(red: 0.5, green: 0.0, blue: 0.5) }
	@inlinable static var brown: Color   { .init(red: 0.6, green: 0.4, blue: 0.2) }

	@inlinable var inverted: Self { .init(components.inverted, opacity: opacity) }
	@inlinable var isVisible: Bool { opacity > .zero }

	@inlinable init(_ components: Components, opacity: Double = 1.0) {
		self.components = components
		self.opacity = opacity
	}

	@inlinable init(white: Double, opacity: Double = 1.0) {
		self.components = .monochrome(white)
		self.opacity = opacity
	}

	@inlinable init(red: Double, green: Double, blue: Double, opacity: Double = 1.0) {
		self.components = .rgb(red, green, blue)
		self.opacity = opacity
	}

	// TODO: complementary color
	// TODO: grayscale
}

public extension Color.Components {

	// TODO: override hash method

	var inverted: Self {
		switch self {
			case let .rgb(r, g, b): return .rgb(1.0 - r, 1.0 - g, 1.0 - b)
			case let .monochrome(x): return .monochrome(1.0 - x)
			case .clear: return .clear
		}
	}
}
