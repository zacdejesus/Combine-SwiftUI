//
//  StoryDetailModel.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 15/01/2023.
//

import Foundation
import Combine

class StoryDetailModel: ObservableObject {
    
    var title: String {
        return self.story.title
    }

    var url: String {
        return self.story.url
    }
    
    private var cancellable: AnyCancellable?
    @Published private var story = Story.placeholder()
    
    init() {

    }
    
    func getData(id: Int) {
        cancellable = WebService().getStoryById(id: id)
            .catch({ _ in Just(Story.placeholder())})
            .sink(receiveCompletion: { _ in }, receiveValue: { story in
            self.story = story
        })
    }
}
