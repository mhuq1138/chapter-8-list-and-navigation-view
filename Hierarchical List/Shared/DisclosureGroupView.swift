//
//  DisclosureGroupView.swift
//  Hierarchical List
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct DisclosureGroupView: View {
    @State private var isExpanded = true
    
    var body: some View {
        Form{
            Section {
                DisclosureGroup(isExpanded: $isExpanded) {
                    Text("Mercury")
                    Text("venus")
                    Text("Earth")
                    Text("Mars")
                    Text("Jupiter")
                    Text("Saturn")
                    Text("Urenus")
                    Text("Neptune")
                
                } label: {
                    Text("Planets")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                }
            }
            
            Section {
                DisclosureGroup {
                    TextField("Address", text: .constant(""))
                    TextField("City", text: .constant(""))
                    TextField("State", text: .constant(""))
                    TextField("Country", text: .constant(""))
                } label: {
                    Text("Employee")
                        .font(.title)
                }
            }
        }
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
