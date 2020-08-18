//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/14/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            EditSingleRowView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle")
                        Text("Editing Single Row")
                    }
                }.tag(0)
            EditMultipleRowView()
                .tabItem {
                    VStack {
                        Image(systemName: "2.circle")
                        Text("Editing Multiple Row")
                    }
                }.tag(1)
            EditWithForEachView()
                .tabItem {
                    VStack {
                        Image(systemName: "3.circle")
                        Text("Edit with ForEach")
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
