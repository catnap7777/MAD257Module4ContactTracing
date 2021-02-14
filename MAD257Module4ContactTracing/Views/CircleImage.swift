//
//  CircleImage.swift
//  MAD257Module4ContactTracing
//
//  Created by Karen Mathes on 2/13/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
//        Image("contactmainpictsm2")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 8)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
//        CircleImage()
        CircleImage(image: Image("turtlerock"))
    }
}
