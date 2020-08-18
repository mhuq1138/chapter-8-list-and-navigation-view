//
//  HierarchicalView.swift
//  Hierarchical List
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct HierarchicalView: View {
    let countries = CountryData.countries
    
    var body: some View {
        List(countries,children:\.children){country in
            Text(country.name)
        }
    }
}

struct HierarchicalView_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalView()
    }
}
