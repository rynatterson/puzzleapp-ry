//
//  ContentView.swift
//  DotsClone
//
//  Created by Ry Natterson on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            DragableImage(imageName: "image1", endLocation: CGPointMake(120,120))
            DragableImage(imageName: "image2", endLocation: CGPointMake(0,120))
            DragableImage(imageName: "image3", endLocation: CGPointMake(-120,120))
            DragableImage(imageName: "image4", endLocation: CGPointMake(120,0))
            DragableImage(imageName: "image5", endLocation: CGPointMake(0,0))
            DragableImage(imageName: "image6", endLocation: CGPointMake(-120,0))
            DragableImage(imageName: "image7", endLocation: CGPointMake(120,-120))
            DragableImage(imageName: "image8", endLocation: CGPointMake(0,-120))
            DragableImage(imageName: "image9", endLocation: CGPointMake(-120,-120))
        }
    }
            
        }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                DragableImage(imageName: "hi", endLocation: CGPoint(x:0,y:0))
            }
        }
    
