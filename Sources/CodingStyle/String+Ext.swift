//
//  File.swift
//
//
//  Created by Егор Кожемин on 06.02.2022.
//

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }

    var upperCamelCased: String {
        return lowercased()
            .split(separator: " ")
            .map { return $0.lowercased().capitalizingFirstLetter() }
            .joined()
    }

    var lowerCamelCased: String {
        let upperCased = upperCamelCased
        return upperCased.prefix(1).lowercased() + upperCased.dropFirst()
    }
}
