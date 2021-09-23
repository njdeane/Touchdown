//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Shop()) // Enables the sharing of data from the Shop object accross the entire app
    }
  }
}
