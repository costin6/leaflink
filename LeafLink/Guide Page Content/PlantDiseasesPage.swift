import Foundation
import SwiftUI
struct PlantDiseasesView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header(title: "Powdery Mildew", imageName: "powdery-mildew")
                Text("Description")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom,.top],5)
                
                Text("It appears as white, powdery spots on the surface of leaves, stems, and occasionally flowers and fruit. Over time, these spots can spread and cover large portions of the plant. The fungal spores are carried by wind, and humid conditions without direct water on leaves can favor its development.")
                    .padding([.bottom],20)
                    .padding([.leading, .trailing])
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("Plants Affected")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Pumpkins")
                    BulletTextView(text: "Roses")
                    BulletTextView(text: "Cucumbers")
                    BulletTextView(text: "Grapes")
                    BulletTextView(text: "Apples")
                }
                .padding([.bottom],20)
                .padding([.leading, .trailing])
                
                Text("Prevention and Management")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(alignment: .leading, spacing: 10) {
                    BulletTextView(text: "Provide good air circulation around plants by spacing them adequately.")
                    BulletTextView(text: "Avoid overhead watering in susceptible plants, or water early in the day to allow leaves to dry quickly.")
                    BulletTextView(text: "Fungicides can be used as a preventive measure or to control established infections. Common fungicides used for powdery mildew control include neem oil, sulfur-based sprays, and potassium bicarbonate.")
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct BulletTextView: View {
    var text: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Text("•")
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
            Spacer()
        }
    }
}

struct PlantDiseaseView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDiseasesView()
    }
}
