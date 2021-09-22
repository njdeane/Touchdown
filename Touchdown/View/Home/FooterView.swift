//
//  FooterView.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct FooterView: View {
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      Text("We offer the most cuttuing edge, comfortable, lightweight and durable football helmets on the market at affordable prices.")
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(2)
      
      Image("logo-lineal")
        .renderingMode(.template)
        .foregroundColor(.gray)
        .layoutPriority(0)
      
        Text("Copyright © Nic Deane\nAll rights reserved")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
    }//: Vstack
    .padding()
  }
}

struct FooterView_Previews: PreviewProvider {
  static var previews: some View {
    FooterView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
