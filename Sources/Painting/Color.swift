
import Geometry

public struct Color : Hashable, Paint {

	public enum Components : Hashable {
		case rgb(Scalar, Scalar, Scalar)
		case hsl(Scalar, Scalar, Scalar)
		case hsv(Scalar, Scalar, Scalar)
		case monochrome(Scalar)
		case none
	}

	public let components: Components
	public let opacity: Scalar
}

// MARK: -

public extension Color {

	@inlinable static var clear: Color { .init(.none, opacity: .zero) }

	@inlinable static var black: Color { .init(white: 0.0) }
	@inlinable static var gray: Color { .init(white: 0.5) }
	@inlinable static var white: Color { .init(white: 1.0) }

	@inlinable static var shadow: Color { .init(white: .zero, opacity: 0.33) }

	@inlinable static var red: Color { .init(red: 1.0, green: 0.0, blue: 0.0) }
	@inlinable static var green: Color { .init(red: 0.0, green: 1.0, blue: 0.0) }
	@inlinable static var blue: Color { .init(red: 0.0, green: 0.0, blue: 1.0) }
	@inlinable static var cyan: Color { .init(red: 0.0, green: 1.0, blue: 1.0) }
	@inlinable static var yellow: Color { .init(red: 1.0, green: 1.0, blue: 0.0) }
	@inlinable static var magenta: Color { .init(red: 1.0, green: 0.0, blue: 1.0) }
	@inlinable static var orange: Color { .init(red: 1.0, green: 0.5, blue: 0.0) }
	@inlinable static var purple: Color { .init(red: 0.5, green: 0.0, blue: 0.5) }
	@inlinable static var brown: Color { .init(red: 0.6, green: 0.4, blue: 0.2) }

	@inlinable var inverted: Self { .init(components.inverted, opacity: opacity) }
	@inlinable var isVisible: Bool { opacity > .zero }

	@inlinable init(red: Scalar, green: Scalar, blue: Scalar, opacity: Scalar = 1.0) {
		self.components = .rgb(red, green, blue)
		self.opacity = opacity
	}

	@inlinable init(hue: Scalar, saturation: Scalar, lightness: Scalar, opacity: Scalar = 1.0) {
		self.components = .hsl(hue, saturation, lightness)
		self.opacity = opacity
	}

	@inlinable init(hue: Scalar, saturation: Scalar, value: Scalar, opacity: Scalar = 1.0) {
		self.components = .hsv(hue, saturation, value)
		self.opacity = opacity
	}

	@inlinable init(white: Scalar, opacity: Scalar = 1.0) {
		self.components = .monochrome(white)
		self.opacity = opacity
	}

	// TODO: complementary color
	// TODO: grayscale
}

// MARK: -

internal extension Color {
	@inlinable init(_ components: Components, opacity: Scalar) {
		self.components = components
		self.opacity = opacity
	}
}

// MARK: -

public extension Color.Components {

	// TODO: override hash method

	var inverted: Self {
		switch self {
			case let .rgb(r, g, b): return .rgb(1.0 - r, 1.0 - g, 1.0 - b)
			case let .hsl(h, s, l): return .hsl(1.0 - h, s, l)
			case let .hsv(h, s, v): return .hsl(1.0 - h, s, v)
			case let .monochrome(x): return .monochrome(1.0 - x)
			case .none: return .none
		}
	}
}
