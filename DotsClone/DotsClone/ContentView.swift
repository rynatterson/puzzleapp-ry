//
//  ContentView.swift
//  DotsClone
//
//  Created by Ry Natterson on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            DragableImage(image: Image("image1"))
                       .position(x: CGFloat(Int.random(in: 50...350)), y: CGFloat(Int.random(in: 50...700)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image2"))
                       .position(x: CGFloat(Int.random(in: 50...350)), y: CGFloat(Int.random(in: 50...700)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image3"))
                       .position(x: CGFloat(Int.random(in: 50...350)), y: CGFloat(Int.random(in: 50...700)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image4"))
                       .position(x: CGFloat(Int.random(in: 50...350)), y: CGFloat(Int.random(in: 50...700)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image5"))
                       .position(x: CGFloat(Int.random(in: 50...350)), y: CGFloat(Int.random(in: 50...700)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image6"))
                       .position(x: CGFloat(Int.random(in: 30...140)), y: CGFloat(Int.random(in: 30...140)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image7"))
                       .position(x: CGFloat(Int.random(in: 30...140)), y: CGFloat(Int.random(in: 30...140)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image8"))
                       .position(x: CGFloat(Int.random(in: 30...140)), y: CGFloat(Int.random(in: 30...140)))
                       .scaleEffect(0.75)
            DragableImage(image: Image("image9"))
                       .position(x: CGFloat(Int.random(in: 30...140)), y: CGFloat(Int.random(in: 30...140)))
                       .scaleEffect(0.75)
                   
      
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage()
    }
}
