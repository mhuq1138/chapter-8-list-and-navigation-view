//
//  GroupedStyleView.swift
//  List with Sections Examples
//
//  Created by Mazharul Huq on 8/16/20.
//

import SwiftUI

struct GroupedStyleView: View {
    let europeanCountries = CountryData.europeanCountries
    let asianCountries = CountryData.asianCountries
    let africanCountries = CountryData.africanCountries
    
    var body: some View {
        List{
            Section(header: Header(title:"European Countries"), footer: Footer(title:"Two european countries" )) {
                ForEach(europeanCountries){country in
                    CountryInfo(country:country)
                }
            }
            Section(header: Header(title:"Asian Countries"), footer: Footer(title:"Two asian countries" )) {
                ForEach(asianCountries){country in
                    CountryInfo(country:country)
                }
            }
            Section(header: Header(title:"African Countries"),footer: Footer(title:"Two african  countries" )) {
                ForEach(africanCountries){country in
                    CountryInfo(country:country)
                }
            }
            
        }.listStyle(GroupedListStyle())
    }
}

struct GroupedStyleView_Previews: PreviewProvider {
    static var previews: some View {
        GroupedStyleView()
    }
}
