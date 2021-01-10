
import Geometry

public struct Color : Hashable {

	public enum Components : Hashable {
		case rgb(Scalar, Scalar, Scalar)
		case hsb(Scalar, Scalar, Scalar)
		case hsl(Scalar, Scalar, Scalar)
		case monochrome(Scalar)
		case named(String)
		case none
	}

	public let components: Components
	public let opacity: Scalar

	@inlinable internal init(components: Components, opacity: Scalar) {
		self.components = components
		self.opacity = opacity
	}
}

// MARK: -

public extension Color {

	@inlinable static var clear: Self	{ .init(components: .none, opacity: .zero) }

	@inlinable static var black: Self	{ .init(white: 0.0) }
	@inlinable static var gray: Self	{ .init(white: 0.5) }
	@inlinable static var white: Self	{ .init(white: 1.0) }

	@inlinable static var shadow: Self	{ .init(white: .zero, opacity: 0.33) }

	@inlinable static var red: Self		{ .init(named: #function) }
	@inlinable static var green: Self	{ .init(named: #function) }
	@inlinable static var blue: Self	{ .init(named: #function) }
	@inlinable static var cyan: Self	{ .init(named: #function) }
	@inlinable static var yellow: Self	{ .init(named: #function) }
	@inlinable static var magenta: Self	{ .init(named: #function) }
	@inlinable static var orange: Self	{ .init(named: #function) }
	@inlinable static var purple: Self	{ .init(named: #function) }
	@inlinable static var brown: Self	{ .init(named: #function) }

	@inlinable init(red: Scalar, green: Scalar, blue: Scalar, opacity: Scalar = 1.0) {
		self.init(components: .rgb(red, green, blue), opacity: opacity)
	}

	@inlinable init(hue: Scalar, saturation: Scalar, lightness: Scalar, opacity: Scalar = 1.0) {
		self.init(components: .hsl(hue, saturation, lightness), opacity: opacity)
	}

	@inlinable init(hue: Scalar, saturation: Scalar, brightness: Scalar, opacity: Scalar = 1.0) {
		self.init(components: .hsb(hue, saturation, brightness), opacity: opacity)
	}

	@inlinable init(white: Scalar, opacity: Scalar = 1.0) {
		self.init(components: .monochrome(white), opacity: opacity)
	}

	@inlinable init(named name: String, opacity: Scalar = 1.0) {
		self.init(components: .named(name), opacity: opacity)
	}
}
