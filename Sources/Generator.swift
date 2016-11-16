//
//  Generator.swift
//  MonoGenerator
//
//  Created by mono on 2016/11/16.
//
//

import Foundation

class Generator {
    let value: String
    init(value: String) {
        self.value = value
    }

    func generate(suffix: String = "(　´･‿･｀)", maxLength: Int? = nil) -> String {
        let r = value + suffix
        guard let maxLength = maxLength else {
            return r
        }
        // こうも書けるけどprefixの方がややベターかな
//        return r[r.startIndex..<r.index(r.startIndex, offsetBy: maxCount)]
        return String(r.characters.prefix(maxLength))
    }
}
