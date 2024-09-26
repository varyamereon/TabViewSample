//
//  NavigationContext.swift
//  TabViewSample
//
//  Created by Will Beal on 26.09.24.
//

import SwiftUI

@Observable
final class NavigationContext {
    var selectedEvent: Event?
    var selectedDateOffset: Int = 0
}
