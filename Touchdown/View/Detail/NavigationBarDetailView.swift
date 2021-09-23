//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Nic Deane on 23/9/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
  var body: some View {
    HStack {
      Button(action: {}, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    }
  }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
