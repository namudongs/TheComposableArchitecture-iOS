//
//  TheComposableArchitectureApp.swift
//  TheComposableArchitecture
//
//  Created by namdghyun on 10/22/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TheComposableArchitectureApp: App {
  static let store = Store(initialState: CounterFeature.State()) {
    CounterFeature()
      ._printChanges()
  }
  
  
  var body: some Scene {
    WindowGroup {
      CounterView(store: TheComposableArchitectureApp.store)
    }
  }
}
