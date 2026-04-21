import Foundation
import SwiftUI
struct MyPlantGuideView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header(title: "Coral Cactus", imageName: "my-plant")
                Text("Rhipsalis cereuscula")
                    .padding(.bottom, 20)
                Text("Lighting  ☀️")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom,.top],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Preferred: Bright, indirect light.")
                    BulletTextView(text: "Tolerance: Can tolerate some direct morning or late afternoon sunlight, but avoid intense midday sun which can cause sunburn.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Watering  💦")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Frequency: Water when the top 1-2 inches of soil feels dry. This usually means watering once every 2-3 weeks, but frequency can vary based on the environment.")
                    BulletTextView(text: "Method: Water thoroughly until excess water drains out. Make sure the pot has good drainage.")
                    BulletTextView(text: "Note: Overwatering can lead to root rot, so it's better to err on the side of underwatering.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Pruning  ✂️")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Pruning: Trim to shape and remove any unhealthy stems.")
                    BulletTextView(text: "Propagation: Propagate from stem cuttings. Allow the cut end to callous for a day or two before planting in soil..")
                    }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
                
                Text("Temperature and humidity  🌡️")
                    .bold()
                    .font(.system(size:20))
                    .padding([.bottom],5)
                
                VStack(spacing: 10) {
                    BulletTextView(text: "Temperature: Prefers temperatures between 15°C to 27°C. Avoid temperatures below 10°C.")
                    BulletTextView(text: "Humidity: Rhipsalis cereuscula prefers higher humidity but will tolerate average home humidity. Consider misting the plant or placing it on a humidity tray if the air is too dry.")
                }
                .padding([.bottom],30)
                .padding([.leading, .trailing])
            }
        }
    }
}

struct MyPlantGuideView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlantGuideView()
    }
}
