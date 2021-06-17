//
//  MapView.swift
//  Maps SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import MapKit
import SwiftUI

enum Constants {
    static let coordinates = CLLocationCoordinate2D(latitude: 40.4380638, longitude: -3.7495762)
    static let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let region = MKCoordinateRegion(center: Constants.coordinates, span: Constants.span)

        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

// BASIC SWIFT UI
/*
 struct MapView: View {
     @State private var region = MKCoordinateRegion(center: Constants.coordinates, span: Constants.span)

     var body: some View {
         Map(coordinateRegion: $region)
             .edgesIgnoringSafeArea(.all)
     }
 }
 */

// HACKING WITH SWITH METHOD
/*
 struct MapView: UIViewRepresentable {
     func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
         let mapView = MKMapView()
         return mapView
     }

     func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
         let region = MKCoordinateRegion(center: Constants.coordinates, span: Constants.span)

         uiView.setRegion(region, animated: true)
     }
 }
 */
