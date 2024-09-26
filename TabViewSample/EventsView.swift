//
//  EventsView.swift
//  TabViewSample
//
//  Created by Will Beal on 26.09.24.
//

import SwiftUI

struct EventsView: View {
    
    @Environment(NavigationContext.self) var navigationContext
    var body: some View {
        VStack {
            @Bindable var navigationContext = navigationContext
            
            TabView(selection: $navigationContext.selectedDateOffset) {
                Text("2 days ago")
                    .tag(-2)
                Text("1 day ago")
                    .tag(-1)
                Text("Today")
                    .tag(0)
                Text("In 1 day")
                    .tag(1)
                Text("In 2 days")
                    .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: 120)
            
            let todayEvents = Event.events.filter( { $0.dateOffset == navigationContext.selectedDateOffset })
            
            if !todayEvents.isEmpty {
                List(todayEvents, selection: $navigationContext.selectedEvent) { event in
                    NavigationLink(event.title, value: event)
                }
            } else {
                ContentUnavailableView("No events", systemImage: "calendar")
            }
        }
    }
}

#Preview {
    EventsView()
        .environment(NavigationContext())
}
