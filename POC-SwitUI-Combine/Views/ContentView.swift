//
//  ContentView.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 14/01/2023.
//

import SwiftUI
import CoreData
import Combine

struct ContentView: View {
    
    @ObservedObject private var storyViewListModel = StoryListViewModel()
    
    var body: some View {
        NavigationView {
            List(self.storyViewListModel.stories, id: \.id) { storyVM in
                NavigationLink(destination: StoryDetailView(storyId: storyVM.id)) {
                    Text("\(storyVM.id)")
                }
                Text("\(storyVM.id)")
            }
            .navigationTitle("Hacker news")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
