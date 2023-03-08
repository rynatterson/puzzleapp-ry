//
//  DragableImage.swift
//  DotsClone
//
//  Created by Ry Natterson on 2/28/23.
//

import SwiftUI

struct DragableImage: View {
    
    
    private let size: CGFloat = 120
    @State private var offset = CGSize.zero
    var imageName: String
    var endLocation:CGPoint
    
    init(imageName: String, endLocation: CGPoint) {
        self.offset = CGSize(
            width: Int.random(in: -120...120), height: Int.random(in: -120...120)
            )
        self.imageName = imageName
        self.endLocation = endLocation
    }
    var dragGesture: some Gesture{
        DragGesture()
            .onChanged{ value in
                
                var x = value.startLocation.x + value.translation.width - size/2
                var y = value.startLocation.y + value.translation.height - size/2
                
                if abs(x - endLocation.x) < 20 && abs(y - endLocation.y) < 20{
                    x = endLocation.x
                    y = endLocation.y
                }
                offset = CGSize(
                    width: x,
                    height: y)
            }
    }
   
    
       var body: some View {
           Image(imageName)
                   .resizable()
                   .frame(width: size, height: size)
                   .offset(offset)
                   .gesture(dragGesture)
       
       }
   }

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage(imageName: "Photo", endLocation: CGPoint(x:0,y:0))
    }
}
