//
//  StoryListViewModel.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 14/01/2023.
//

import Foundation
import Combine

class StoryListViewModel: ObservableObject {
    
    @Published var stories = [StoryViewModel]()
    private var cancellable: AnyCancellable?
    
    init() {
        fetchTopStories()
    }
    
    private func fetchTopStories() {
        cancellable = WebService().getallTopStories().map { storyIds in
            storyIds.map { StoryViewModel(id: $0) }
        }.sink { _ in } receiveValue: { [weak self] storyViewModels in
            self?.stories  = storyViewModels
        }

    }
}

struct StoryViewModel {
    let id: Int
}
