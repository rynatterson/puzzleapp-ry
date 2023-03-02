//
//  DragableImage.swift
//  DotsClone
//
//  Created by Ry Natterson on 2/28/23.
//

import SwiftUI

struct DragableImage: View {
    private let size: CGFloat = 80
    @State var offset = CGSize.zero

    var dragGesture: some Gesture{
        DragGesture()
            .onChanged{ value in
                offset = CGSize(width: value.startLocation.x + value.translation.width - size/2, height: value.startLocation.y + value.translation.height - size/2)
            }
    }
    var image: Image = Image("image1")
       var body: some View {
           //{
               Spacer()
              
                   image
                   .resizable()
                   .frame(width: size, height: size)
                   .offset(offset)
                   .gesture(dragGesture)
               Spacer()
         //  }
       }
   }

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage()
    }
}
