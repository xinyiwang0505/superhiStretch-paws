//
//  DetailView.swift
//  superhiStretch+paws
//
//  Created by Cindy Wang on 6/4/22.
//

import SwiftUI

struct DetailView: View {
    let pose: Pose
    var body: some View {
        ZStack {
            Color("secondary").ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack (spacing: 20){
                    Image(pose.icon)
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text(pose.name)
                        .bold()
                        .font(.system(size: 36))
                        .foregroundColor(Color("highlight"))
                        .multilineTextAlignment(.center)
                        
                
                    Text(pose.asana)
                        .italic()
                        .fontWeight(.medium)
                        .font(.system(size: 22))
                     
                    VStack (alignment: .leading,spacing: 20){
                        Text(pose.description)
                        Text("How to:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("highlight"))
                        ForEach(pose.steps ,id:\.self){
                            step in
                            Text(step)
                        }
                        Text("Top tip:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("highlight"))
                        Text(pose.topTip)
                    }
                   
                }
            }.padding(.horizontal,20)
               
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pose: Pose(
            name: "Downward-Facing Dog",
            asana: "Adho Mukha Shvanasana",
            icon: "Cat-1",
            description:
            "Did someone say dog? Can't we call this a downward-facing cat instead? It's OK – this is a friendly dog, it's not interested in chasing cats. In fact, Downward-Facing Dog is the lynchpin of a yoga asana practice: if you're going to befriend with any of these poses, make sure it's this canine classic.",
            steps: ["From a kneeling position, place your hands shoulder-distance apart and spread your fingers.", "Tuck your toes and lift your hips up towards the ceiling so you create an inverted V shape.", "Balance the weight between hands and feet and think about tilting your tailbone up towards the ceiling.","Send your gaze towards your feet and breath!"],
            topTip: "Bend your knees in order to create more length through the spine." ))
    }
}
