//
//  Event.swift
//  TabViewSample
//
//  Created by Will Beal on 26.09.24.
//

import Foundation

struct Event: Codable, Identifiable, Hashable {
    let id: UUID
    let title: String
    let description: String
    let dateOffset: Int
    
    init(title: String, description: String, dateOffset: Int) {
        self.id = UUID()
        self.title = title
        self.description = description
        self.dateOffset = dateOffset
    }
}

extension Event {
    static var events: [Event] {
        [
            Event(title: "Event 1", description: "Description 1", dateOffset: -2),
            Event(title: "Event 2", description: "Description 2", dateOffset: -1),
            Event(title: "Event 3", description: "Description 3", dateOffset: 0),
            Event(title: "Event 4", description: "Description 4", dateOffset: 1),
            Event(title: "Event 5", description: "Description 5", dateOffset: 2)
        ]
    }
}
