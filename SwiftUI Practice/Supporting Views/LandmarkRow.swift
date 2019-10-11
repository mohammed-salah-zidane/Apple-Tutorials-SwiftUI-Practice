//
//  LandmarkRow.swift
//  Swift UI Test
//
//  Created by prog_zidane on 10/10/19.
//  Copyright © 2019 prog_zidane. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    var body: some View{
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
