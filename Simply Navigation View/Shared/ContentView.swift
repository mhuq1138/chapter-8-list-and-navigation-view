//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack(alignment: .center, spacing: 10){
                    Image("swiftui-96x96")
                    Text("Welcome from SwiftUI")
                       .font(.largeTitle)
                       .foregroundColor(.orange)
                }
                NavigationLink(destination: DetailView()
                    ){
                    Text("Show DetailView")
                        .font(.title)
                        .foregroundColor(.blue)
                }.padding(20)
            }.navigationTitle("Welcome")
             .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
