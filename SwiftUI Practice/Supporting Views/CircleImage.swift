//
//  Circle.swift
//  Swift UI Test
//
//  Created by prog_zidane on 10/8/19.
//  Copyright © 2019 prog_zidane. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image.resizable().frame(height:200).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
        
    }
}
