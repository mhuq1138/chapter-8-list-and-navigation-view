//
//  CountryInfo.swift
//  List with Sections Examples
//
//  Created by Mazharul Huq on 8/16/20.
//

import SwiftUI

struct CountryInfo: View {
    let country:CountryData
    var body: some View {
        VStack(alignment: .leading,spacing:15){
            HStack{
                Text(country.name)
                Spacer()
                Text(country.capital)
            }.font(.title)
            Text("population: \(country.population) millions")
        }
    }
}


