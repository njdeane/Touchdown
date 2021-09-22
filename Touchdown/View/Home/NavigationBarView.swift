//
//  NavigationBarview.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct NavigationBarView: View {
  
  @State private var isAnimated: Bool = false
  
  var body: some View {
    HStack {
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      }) //: Button
      
      Spacer()
      
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .onAppear(perform: {
          withAnimation(.easeInOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        })
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.black)
          
          Circle()
            .fill(Color.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x: 13, y: -10)
        } //: Zstack
      }) //: Button
    } //: Hstack
  }
}

struct NavigationBarview_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
