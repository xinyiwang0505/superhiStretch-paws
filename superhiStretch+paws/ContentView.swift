//
//  ContentView.swift
//  superhiStretch+paws
//
//  Created by Cindy Wang on 6/2/22.
//
//initial interface

import SwiftUI

struct ContentView: View {
    
    init(){
        UITableView.appearance().backgroundColor = UIColor(named:"secondary")
    }
    
    let poses = Poses()
    var body: some View {
        NavigationView{
            List(poses.poseData){pose in
                NavigationLink(destination: DetailView(pose:pose)) {
                    Image(pose.icon)
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text(pose.name)
                        .fontWeight(.medium)
                        .font(.title3)
                        .padding(.leading,20)
                }
                .padding(5)
                .listRowBackground(Color("secondary"))
                
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
