//
//  ContentView.swift
//  TabViewSample
//
//  Created by Will Beal on 26.09.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var navigationContext = NavigationContext()
    
    var body: some View {
        NavigationSplitView(sidebar: {
            EventsView()
                .navigationTitle("Events")
        }, detail: {
            DetailView()
                .navigationTitle(navigationContext.selectedEvent?.title ?? "")
        })
        .environment(navigationContext)
    }
}

#Preview {
    ContentView()
        .environment(NavigationContext())
}
