//
//  CountryData.swift
//  Hierarchical List
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct CountryData: Identifiable {
    let id = UUID()
    let name:String
    let children:[CountryData]?
}

extension CountryData{
    static var countries:[CountryData]{
        [CountryData(name: "Europe", children:
            [CountryData(name: "United Kingdom", children:
                [CountryData(name: "Capital: London", children: nil),
                 CountryData(name: "Population: 68 million", children: nil)]),
            CountryData(name: "France", children:
                [CountryData(name: "Capital: Paris", children: nil),
                 CountryData(name: "Population: 65 million", children: nil)])]),
         
         CountryData(name: "Asia", children:
             [CountryData(name: "China", children:
                 [CountryData(name: "Capital: Beijing", children: nil),
                  CountryData(name: "Population: 1440 million", children: nil)]),
             CountryData(name: "Japan", children:
                 [CountryData(name: "Capital: Tokyo", children: nil),
                  CountryData(name: "Population: 126 million", children: nil)])]),
         
         CountryData(name: "Africa", children:
             [CountryData(name: "Nigeria", children:
                 [CountryData(name: "Capital: Abuja", children: nil),
                  CountryData(name: "Population: 206 million", children: nil)]),
             CountryData(name: "Kenya", children:
                 [CountryData(name: "Capital: Nairobi", children: nil),
                  CountryData(name: "Population: 54 million", children: nil)])])]
    }
}


