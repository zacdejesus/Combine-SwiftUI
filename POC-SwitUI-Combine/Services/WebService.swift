//
//  WebService.swift
//  POC-SwitUI-Combine
//
//  Created by Alejandro De Jesus on 14/01/2023.
//

import Foundation
import Combine

class WebService {
    func getallTopStories() -> AnyPublisher<[Int], Error> {
        
        guard let  url = URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty") else { fatalError() }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Int].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
