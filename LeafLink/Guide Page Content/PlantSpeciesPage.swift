import Foundation
import SwiftUI
struct SpeciesView: View {
    let plants = [
        Plant(imageName: "apple-tree", name:"Apple tree", scientificName: "Malus domestica", watering: "Medium", sunlight: "Full Sun"),
        Plant(imageName: "pear-tree", name:"Pear tree", scientificName: "Pyrus communis", watering: "Medium", sunlight: "Full Sun"),
        Plant(imageName: "cherry-tree", name:"Cherry tree", scientificName: "Prunus avium", watering: "Medium", sunlight: "Full Sun"),
        Plant(imageName: "japanese-maple", name:"Japanese maple", scientificName: "Acer palmatum", watering: "Medium", sunlight: "Partial shade")
    ]
    
    var body: some View {
        Header(title: "Species", imageName: "plant-species")
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(plants, id: \.imageName) { plant in
                    PlantCard(plant: plant)
                        .frame(width: 250)
                }
            }
            .padding()
        }
        .padding(.bottom, 30)
    }
}

struct PlantCard: View {
    var plant: Plant
    
    var body: some View {
        VStack(spacing: 10) {
            Image(plant.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Scientific Name:")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding([.bottom, .top], 5)
                    Spacer()
                    Text(plant.scientificName)
                        .font(.footnote)
                }
                
                HStack {
                    Text("Watering:")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding([.bottom, .top], 5)
                    Spacer()
                    Text(plant.watering)
                        .font(.footnote)
                }
                
                HStack {
                    Text("Sunlight:")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.top, 5)
                    Spacer()
                    Text(plant.sunlight)
                        .font(.footnote)
                }
            }
        }
        .padding(10)
        .padding([.top, .bottom], 20)
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
        .cornerRadius(10)
    }
}

struct Plant {
    var imageName: String
    var name: String
    var scientificName: String
    var watering: String
    var sunlight: String
}

struct PlantSpeciesView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesView()
    }
}
