//
//  IdentifiableArrayView.swift
//  List View Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct IdentifiableArrayView: View {
    let conditionArray: [Weather] =
            [Weather(imageName: "sun.max", condition: "Sunny"),
             Weather(imageName: "cloud", condition: "Cloudy"),
             Weather(imageName: "cloud.drizzle", condition: "Drizzling"),
             Weather(imageName: "cloud.rain", condition: "Raining"),
             Weather(imageName: "cloud.snow", condition: "Snowing"),
             Weather(imageName: "cloud.sun", condition: "Partly Cloudy")]
    
    var body: some View {
        List(conditionArray){ item in
            HStack{
                Image(systemName: item.imageName)
                    .font(.largeTitle)
                Spacer()
                Text(item.condition)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }
        }
    }
}

struct Weather:Identifiable{
    var id = UUID()
    var imageName: String
    var condition: String
}

struct IdentifiableArrayView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifiableArrayView()
    }
}
