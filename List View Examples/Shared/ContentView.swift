//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            StaticRowsView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Static List Rows")
                    }
                }.tag(0)
            SimpleArrayView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Simple Array Type")
                    }
                }.tag(1)
            IdentifiableArrayView()
                .tabItem {
                    VStack {
                        Image(systemName: "3.circle")
                        Text("Identifiable Array Type")
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
