//
//  DetailView.swift
//  Simply Navigation View
//
//  Created by Mazharul Huq on 8/17/20.
//

import SwiftUI

struct DetailView: View {
    @State private var push = false
    var body: some View {
        VStack {
            Text("Hello from DetailView")
               .font(.largeTitle)
               .foregroundColor(.white)
               .padding()
               .background(Color.red)
               .navigationTitle("Detail View")
            NavigationLink(destination: DetailView2(),isActive: $push ){
                EmptyView()
            }
        }.toolbar{
            ToolbarItem {
                HStack {
                    Button("DetailView2") {
                        push = true
                    }
                    Button(action: {push = true}){
                        Image(systemName: "chevron.right")
                    } 
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
