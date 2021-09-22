//
//  ContentView.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct ContentView: View {
  
  
  
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        Spacer()
        
        FooterView()
          .padding(.horizontal)
      } //: Vstack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } //: Zstsack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

