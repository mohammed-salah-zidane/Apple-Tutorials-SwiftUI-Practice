//
//  MapView.swift
//  Swift UI Test
//
//  Created by prog_zidane on 10/8/19.
//  Copyright © 2019 prog_zidane. All rights reserved.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
   
    var coordinates : CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
//           let coordinate = CLLocationCoordinate2D(latitude:30.033333, longitude: 31.233334)
           let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
           let region = MKCoordinateRegion(center: coordinates, span: span)
           uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: landmarkData[0].locationCoordinate)
    }
}
