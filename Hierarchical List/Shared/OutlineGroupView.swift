//
//  OutlineGroupView.swift
//  Hierarchical List
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct OutlineGroupView: View {
    let countries = CountryData.countries
    
    var body: some View {
        List{
            Label("Home", systemImage: "house")
            OutlineGroup(countries, children: \.children){ country in
                Text(country.name)
            }
            Section(header: Text("Settings")){
                Label("Person Info", systemImage: "person.crop.circle")
                Label("Help", systemImage: "person.2")
                Label("Logout", systemImage: "applelogo")
            }
        }.listStyle(SidebarListStyle())
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
