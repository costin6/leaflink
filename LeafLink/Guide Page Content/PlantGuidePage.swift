import Foundation
import SwiftUI
struct PlantGuideView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header(title: "Apple tree", imageName: "apple-tree")
                Text("Planting  🪴")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom,.top],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Location: Choose a sunny spot with well-draining soil.")
                    BulletTextView(text: "Spacing: Standard apple trees should be planted about 15-25 feet apart. Dwarf varieties can be planted 10-15 feet apart.")
                    BulletTextView(text: "Soil: Apple trees prefer slightly acidic to neutral pH (6.0 to 7.5). Before planting, you can test the soil and amend it if needed.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Watering  💦")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Newly Planted Trees: Water regularly after planting, ensuring the soil remains moist but not waterlogged.")
                    BulletTextView(text: "Established Trees: Water every couple of weeks during dry periods. It's better to water deeply and less frequently than to water a little every day.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Pruning  ✂️")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Prune in the late winter when the tree is dormant.")
                    BulletTextView(text: "Remove dead or diseased branches, as well as any that are crossing or growing inwards.")
                    BulletTextView(text: "Aim for an open canopy to allow sunlight and air circulation.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Harvesting  🍎")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Apples are typically ready to harvest from late summer to early fall, depending on the variety.")
                    BulletTextView(text: "Apples are ripe when the skin color deepens and they come off the tree easily when twisted.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
            }
        }
    }
}

struct PlantGuideView_Previews: PreviewProvider {
    static var previews: some View {
        PlantGuideView()
    }
}
