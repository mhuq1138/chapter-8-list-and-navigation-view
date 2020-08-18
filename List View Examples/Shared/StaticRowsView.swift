//
//  StaticRowsView.swift
//  List View Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct StaticRowsView: View {
    var body: some View {
        List{
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.orange)
            Text("from SwiftUI")
                .font(.title)
                .foregroundColor(.green)
            Text("This is a footnote")
                .font(.footnote)
                .foregroundColor(.gray)
            Image("swiftui-96x96")
            HStack(spacing:25){
                Image(systemName: "cloud.rain")
                Text("It's a rainy day")
            }.font(.title)
            Rectangle()
                .fill(Color.red)
                .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct StaticRowsView_Previews: PreviewProvider {
    static var previews: some View {
        StaticRowsView()
    }
}
