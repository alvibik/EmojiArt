//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Александр Биктеев on 11.07.2021.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable, Hashable{
        let text: String
        let x: Int
        let y: Int
        let size: Int
        let id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
        
    }
    
    init () {}
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji (_ text: String, at location: (x: Int, y: Int), size: Int){
        emojis.append(Emoji(text: text, x: location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
}
