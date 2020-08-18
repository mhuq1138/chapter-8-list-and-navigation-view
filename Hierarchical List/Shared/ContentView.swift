//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/16/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HierarchicalView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Hierarchical View")
                    }
                }.tag(0)
            DisclosureGroupView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Disclosure Group View")
                    }
                }.tag(1)
            OutlineGroupView()
                .tabItem {
                    VStack {
                        Image(systemName: "3.circle")
                        Text("Outline Group View")
                    }
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
