//
//  ClosedRangeView.swift
//  ForEach Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct ClosedRangeView: View {
    var body: some View {
        ForEach(1..<6){i in
            HStack{
                Image(systemName: "star.fill")
                Text("item # \(i)")
            }
        }.navigationTitle("Closed Range Data")
    }
}

struct ClosedRangeView_Previews: PreviewProvider {
    static var previews: some View {
        ClosedRangeView()
            .previewLayout(.fixed(width: 250, height: 40))
    }
}
