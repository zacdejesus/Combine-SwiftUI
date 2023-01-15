//
//  StoryDetailModel.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 15/01/2023.
//

import Foundation
import Combine

class StoryDetailModel: ObservableObject {
    
    var id: Int
    private var cancellable: AnyCancellable?
    @Published private var story: Story!
    
    init(id: Int) {
        self.id = id
        
        cancellable = WebService().getStoryById(id: id)
            .catch({ _ in Just(Story(id: 0, title: "", url: ""))})
            .sink(receiveCompletion: { _ in }, receiveValue: { story in
            self.story = story
        })
    }
    
    var title: String {
        return self.story.title
    }

    var url: String {
        return self.story.url
    }
}
