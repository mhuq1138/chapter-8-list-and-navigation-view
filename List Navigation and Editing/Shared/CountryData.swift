//
//  CountryData.swift
//  List Navigation and Editing
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct CountryData: Identifiable {
    let id = UUID()
    let flag:String
    let name:String
    let capital:String
    let description:String
}

extension CountryData{
    static func getCountries()-> [CountryData]{
        var countries = [CountryData]()
            
        countries.append(CountryData(flag:  "USA", name: "United States", capital: "Washington DC", description: "United States is a country in North America, a federal republic of 50 states. Besides the 48 conterminous states that occupy the middle latitudes of the continent, the United States includes the state of Alaska, at the northwestern extreme of North America, and the island state of Hawaii, in the mid-Pacific Ocean."))
            
        countries.append(CountryData(flag:  "Bangladesh", name: "Bangladesh", capital: "Dhaka", description: "Bangladesh is a country in Asia, located on eastern part of Indian subcontinent beween West Bengal, Assam, and Tripura"))
            
        countries.append(CountryData(flag:  "France", name: "France", capital: "Paris", description: "France is a country in Europe. Historically and culturally among the most important nations in the Western world, France has also played a highly significant role in international affairs, with former colonies in every corner of the globe."))
            
        countries.append(CountryData(flag:  "Russia", name: "Russia", capital: "Moscow", description: "Russia is country that stretches over a vast expanse of eastern Europe and northern Asia. Once the preeminent republic of the Union of Soviet Socialist Republics (U.S.S.R.; commonly known as the Soviet Union), Russia became an independent country after the dissolution of the Soviet Union in December 1991."))
            
        countries.append(CountryData(flag:  "Singapore", name: "Singapore", capital: "Singapore", description: "Singapore, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) north of the Equator. It consists of the diamond-shaped Singapore Island and some 60 small islets; the main island occupies all but about 18 square miles of this combined area. The main island is separated from Peninsular Malaysia to the north by Johor Strait, a narrow channel crossed by a road and rail causeway that is more than half a mile long. "))
            
            return countries
    }
}
