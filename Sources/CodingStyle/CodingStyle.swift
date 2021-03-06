import Foundation

public enum CodingCase {
    case camelCase
    case snakeCase
    case kebabCase
}

@propertyWrapper
public struct CodingStyle {
    public private(set) var text: String
    private var currentCodingCase: CodingCase

    init(wrappedValue: String, codingCase: CodingCase) {
        text = wrappedValue
        currentCodingCase = codingCase
    }

    public var wrappedValue: String {
        get {
            get()
        }
        set {
            set(newValue)
        }
    }

    private func get() -> String {
        switch currentCodingCase {
        case .camelCase:
            return toCamelCase()
        case .snakeCase:
            return toSnakeCase()
        case .kebabCase:
            return toKebabCase()
        }
    }

    private mutating func set(_ newValue: String) {
        text = newValue
    }

    private func toCamelCase() -> String {
        return text.upperCamelCased
    }

    private func toSnakeCase() -> String {
        return text.replacingOccurrences(of: " ", with: "_")
    }

    private func toKebabCase() -> String {
        return text.replacingOccurrences(of: " ", with: "-")
    }
}
