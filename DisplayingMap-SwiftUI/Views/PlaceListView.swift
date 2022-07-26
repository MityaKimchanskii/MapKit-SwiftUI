//
//  PlaceListView.swift
//  DisplayingMap-SwiftUI
//
//  Created by Mitya Kim on 7/25/22.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        
        VStack {
            
            HStack {
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(.green)
                .gesture(TapGesture().onEnded(self.onTap))
            
            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
            }
        }.cornerRadius(20)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: { })
    }
}
