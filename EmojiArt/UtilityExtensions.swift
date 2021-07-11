//
//  UtilityExtensions.swift
//  EmojiArt
//
//  Created by Александр Биктеев on 11.07.2021.
//

import SwiftUI

extension Collection where Element: Identifiable {
    
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: {$0.id == element.id})
    }
    
}
