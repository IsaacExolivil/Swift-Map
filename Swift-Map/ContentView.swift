//
//  ContentView.swift
//  Swift-Map
//
//  Created by Isaac Loez on 15/12/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject var locationViewModel = LocationViewModel()
  
    
    var body: some View {
        VStack{
        Map(coordinateRegion: $locationViewModel.userLocation,  showsUserLocation: true)
            .ignoresSafeArea()
            if locationViewModel.userHasLocation {
                Text("Localización Aceptada ")
                    .bold()
                    .padding(.top, 12)
                Link("Pulse aqui para cambiar la autorización de la localización",
                     destination: URL(string: UIApplication.openSettingsURLString)! )
                    .padding(32)
            } else {
                Text("Localización NO Aceptada ")
                    .bold()
                    .padding(.top, 12)
                Link("Pulse aqui para cambiar la autorización de la localización",
                     destination: URL(string: UIApplication.openSettingsURLString)! )
                    .padding(32)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
