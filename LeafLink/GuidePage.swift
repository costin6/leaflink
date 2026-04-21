import Foundation
import SwiftUI
struct SquaresView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Guide")
                .font(.system(size: 25))
                .bold()
                .padding(.bottom, 30)
            HStack(spacing: 20) {
                SquareButton(title: "Species", imageName: "plant-species")
                SquareButton(title: "Plant guide", imageName: "plant-guide")
            }
            HStack(spacing: 20) {
                SquareButton(title: "Plant FAQ", imageName: "plant-faq")
                SquareButton(title: "Plant diseases", imageName: "plant-disease")
            }
        }
        .padding()
    }
}

struct SquareButton: View {
    var title: String
    var imageName: String
    
    private var destinationView: some View {
        switch title {
        case "Species":
            return AnyView(SpeciesView())
        case "Plant guide":
            return AnyView(PlantGuideView())
        case "Plant FAQ":
            return AnyView(PlantFAQView())
        case "Plant diseases":
            return AnyView(PlantDiseasesView())
        default:
            return AnyView(Text("Unknown"))
        }
    }
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.1), Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    .cornerRadius(10)
                    .frame(width: 150, height: 150)
                Text(title)
                    .font(.system(size:20))
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .frame(width: 150, height: 150)
        .cornerRadius(10)
    }
}

struct Header : View{
    var title: String
    var imageName: String
    
    var body: some View {
        VStack {
            ZStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height / 4)
                    .clipped()
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.white.opacity(1), Color.clear, Color.white]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
            Text(title)
                .font(.title)
                .bold()
                .padding([.bottom,.top], 10)
        }
        .padding(.top, 5)
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
