//
//  CustomDataArrayView.swift
//  ForEach Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct CustomDataArrayView: View {
    let countries = [ItemData(id: 1, country: "USA", capital: "Washington DC"),
                     ItemData(id: 2, country: "UK", capital: "London"),
                     ItemData(id: 3, country: "India", capital: "Delhi"),
                     ItemData(id: 4, country: "France", capital: "Paris")
                     ]
    var body: some View {
        VStack(alignment:.leading,spacing:20) {
            ForEach(countries, id: \.id){item in
                HStack(spacing:30){
                    Text(item.country)
                        .font(.title)
                        .frame(width: 100,  alignment: .leading)
                    Text(item.capital)
                        .font(.title2)
                }
            }
        }.navigationTitle("Custom Data Array")
    }
}

struct ItemData{
    let id: Int
    let country:String
    let capital:String
}

struct CustomDataArrayView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataArrayView()
    }
}
