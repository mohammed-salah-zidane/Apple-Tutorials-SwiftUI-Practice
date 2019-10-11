//
//  ContentView.swift
//  Swift UI Test
//
//  Created by prog_zidane on 10/8/19.
//  Copyright © 2019 prog_zidane. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View{
        VStack{
            MapView(coordinates: landmark.locationCoordinate).frame(height: 300)
            CircleImage(image: landmark.image).offset(y: -130).padding(.bottom,-130).edgesIgnoringSafeArea(.top)
            VStack (alignment:.leading) {
                Text(landmark.name).font(.title)
                HStack{
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
            }.padding()
            Spacer()
        }
       .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
