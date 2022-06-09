//
//  DetailView.swift
//  superhiStretch+paws
//
//  Created by Cindy Wang on 6/4/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color("secondary").ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
