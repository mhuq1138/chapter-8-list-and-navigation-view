//
//  SimpleSectionView.swift
//  List with Sections Examples
//
//  Created by Mazharul Huq on 8/16/20.
//

import SwiftUI

struct SimpleSectionView: View {
    let europeanCountries = CountryData.europeanCountries
    let asianCountries = CountryData.asianCountries
    let africanCountries = CountryData.africanCountries
    let americanCountries = CountryData.americanCountries
    
    
    var body: some View {
        List{
            Section(header: Header(title:"European Countries"), footer: Footer(title:"Two european countries" )) {
                ForEach(europeanCountries){country in
                    CountryInfo(country:country)
                }
            }
            Section(header: Header(title:"Asian Countries")) {
                ForEach(asianCountries){country in
                    CountryInfo(country:country)
                }
            }
            Section(footer: Footer(title:"Two african  countries" )) {
                ForEach(africanCountries){country in
                    CountryInfo(country:country)
                }
            }
            Section{
                ForEach(americanCountries){country in
                    CountryInfo(country:country)
                }
            }
        }
    }
}

struct Header: View{
    let title:String
    
    var body: some View{
        Text(title)
            .font(.title)
            .foregroundColor(.orange)
    }
}

struct Footer: View{
    let title:String
    
    var body: some View{
        Text(title)
            .font(.footnote)
            .foregroundColor(.gray)
    }
}

struct SimpleSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleSectionView()
    }
}
