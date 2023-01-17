//
//  Story.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 14/01/2023.
//

import Foundation

struct Story: Codable {
    let id: Int
    let title: String
    let url: String
    
    
    static func placeholder() -> Story {
        return Story(id: 0, title: "", url: "")
    }
}
