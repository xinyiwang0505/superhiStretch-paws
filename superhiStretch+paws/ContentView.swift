//
//  ContentView.swift
//  superhiStretch+paws
//
//  Created by Cindy Wang on 6/2/22.
//
//initial interface

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: DetailView()) {
                    Text("Downward-facing Dog")
                }
                Text("Downward-facing Dog")
                Text("Downward-facing Dog")
                Text("Downward-facing Dog")
            }.listStyle(.grouped)
            
                .navigationBarTitle("Strech + Paw")
        }
    }
}


//this code enables preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
