import Foundation
import SwiftUI
struct HomePageView: View {
    let plantings = [
        Planting(imageName: "apple-tree", name:"Apple tree", date: "20/05/2021"),
        Planting(imageName: "pear-tree", name:"Pear tree", date: "30/03/2020"),
        Planting(imageName: "cherry-tree", name:"Cherry tree", date: "29/06/2018"),
        Planting(imageName: "japanese-maple", name:"Japanese maple", date: "30/04/2017")
    ]
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                        
                        Text("LeafLink")
                            .font(.system(size: 30))
                            .bold()
                    }
                    .padding(.top, 20)
                    .padding(.leading, 30)
                    .padding(.bottom, 10)
                    
                    Spacer()
                }
                HStack(spacing: 0) {
                    Text("Welcome, ")
                    Text("John")
                        .foregroundColor(.green)
                }
                .bold()
                .font(.system(size: 20))
                HStack(spacing: 0) {
                    Text("Let's save the ")
                    Text("Earth")
                        .foregroundColor(.green)
                    Text("!")
                }
                .font(.system(size: 25))
                .bold()
                Text("Your recent platings 🪴")
                    .padding(.top, 30)
                    .font(.title2)
                    .bold()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(plantings, id: \.imageName) { planting in
                            PlantingCard(planting: planting)
                                .frame(width: 200, height: 300)
                        }
                    }
                }
                Text("Latest activity 🌱")
                    .padding(.top, 20)
                    .font(.title2)
                    .bold()
                VStack(){
                    HStack(){
                        Image("apple-tree")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(10)
                        VStack(){
                            Text("Alex planted an apple tree        ")
                            Text("15/06/2023")
                                .foregroundColor(.gray)
                                .padding(.trailing, 140)
                            Text("📍 Portugal")
                                .foregroundColor(.gray)
                                .padding(.trailing, 140)
                        }
                    }
                    HStack(){
                        Image("japanese-maple")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(10)
                        VStack(){
                            Text("Dan planted a japanese maple")
                            Text("20/03/2023")
                                .foregroundColor(.gray)
                                .padding(.trailing, 130)
                            Text("📍 The Netherlands")
                                .foregroundColor(.gray)
                                .padding(.trailing, 70)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct PlantingCard: View {
    var planting: Planting
    
    var body: some View {
        VStack(spacing: 10) {
            Image(planting.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
            Text(planting.name)
                .font(.system(size: 20))
                .bold()
                .multilineTextAlignment(.center)
            Text(planting.date)
                .foregroundColor(.gray)
                .bold()
                .multilineTextAlignment(.center)
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
        .cornerRadius(10)
    }
}


struct Planting {
    var imageName: String
    var name: String
    var date: String
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
