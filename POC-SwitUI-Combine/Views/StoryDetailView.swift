//
//  StoryDetailView.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 15/01/2023.
//

import SwiftUI


struct StoryDetailView: View {
    
    @ObservedObject private var StoryDetailVM: StoryDetailModel
    
    init(storyId: Int) {
        self.StoryDetailVM = StoryDetailModel(id: storyId)
    }
    
    var body: some View {
        VStack {
            Text(StoryDetailVM.title)
        }
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}
