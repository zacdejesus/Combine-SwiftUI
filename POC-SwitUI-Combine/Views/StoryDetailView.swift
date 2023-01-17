//
//  StoryDetailView.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 15/01/2023.
//

import SwiftUI


struct StoryDetailView: View {
    
    @ObservedObject private var storyDetailVM: StoryDetailModel
    
    var storyId: Int
    
    init(storyId: Int) {
        self.storyDetailVM = StoryDetailModel()
        self.storyId = storyId
    }
    
    var body: some View {
        VStack {
            Text(storyDetailVM.title)
            Webview(url: storyDetailVM.url)
        }.onAppear {
            storyDetailVM.getData(id: storyId)
        }
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}
