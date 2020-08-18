//
//  CountryDetailView.swift
//  List Navigation and Editing
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct CountryDetailView: View {
    let country:CountryData
    
    var body: some View {
        VStack{
            Image(country.flag)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .center)
                           .padding(.top, 30)
            HStack{
                Text(self.country.name)
                   .font(.title)
                .padding(.trailing, 30)
                Text(self.country.capital)
            }
            Text(self.country.description)
                .lineLimit(nil)
            .padding()
            Spacer()
        }.navigationTitle(country.name)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: CountryData.getCountries()[0])
    }
}
