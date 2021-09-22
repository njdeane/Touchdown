//
//  SectionView.swift
//  Touchdown
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct SectionView: View {
  
  @State var rotateClockwise: Bool
  
    var body: some View {
      VStack(spacing: 0) {
        Spacer()
        
        Text("Categories".uppercased())
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.white)
          .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
        
        Spacer()
      } //: Vstack
      .background(colorGray.cornerRadius(12))
      .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
      SectionView(rotateClockwise: false)
          .previewLayout(.fixed(width: 120, height: 240))
          .padding()
          .background(colorBackground)
    }
}
