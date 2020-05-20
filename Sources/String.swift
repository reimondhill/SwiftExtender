//
//  String.swift
//  SwiftExtenderiOS
//
//  Created by Ramon Haro Marques on 20/05/2020.
//

import Foundation

extension String {
    ///Holds possible capitalisation style
    enum CapitalisationStyle {
        ///Capitalises all the letters in the String
        case allCapitalised
        ///Lowercases all the letters in the String
        case allLowered
        ///Capitalises onlyl the first letter in the String
        case firstLetter
        ///Capitalises all the first letters in word in the String
        case allFirstLetters
    }
    
    ///Capitalises a string with a giving format
    /// - Parameter style: Style to be capitalised
    /// - Returns: A string capitalised with the chosen style
    func capitalised(with style: CapitalisationStyle) -> String {
        switch style {
        case .allCapitalised:
            return uppercased()
        case .allLowered:
            return lowercased()
        case .firstLetter:
            return lowercased().capitalizingFirstLetter()
        case .allFirstLetters:
            return capitalized
        }
    }
    
    ///Capitalises only the first letter.
    /// - Returns: String with the first letter capitalised.
    /// - Remark: If the string have capitalised letters, they will remain capitalised
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
