import Foundation
import SwiftUI
struct PlantFAQView: View {
    var body: some View {
        ScrollView {
            Header(title:"FAQ", imageName: "plant-faq")
            VStack(spacing: 20) {
                FAQCardView(question: "Why are my plant's leaves yellowing?", answer: "Yellowing leaves can be caused by several factors, including overwatering, underwatering, lack of sunlight, or nutrient deficiencies.")
                FAQCardView(question: "How often should I water my plant?", answer: "The watering frequency depends on the plant species, climate, and potting medium. However, a general rule is to water when the top inch of soil is dry.")
                FAQCardView(question: "What's the best way to repot a plant?", answer: "To repot, choose a container that's 1-2 inches larger in diameter than the current one. Gently remove the plant, clear away old soil, place in the new pot, and fill with fresh soil. Water it well after repotting.")
                FAQCardView(question: "Are coffee grounds good for plants?", answer: "Yes, in moderation. Coffee grounds can add nitrogen to the soil and improve its texture. However, use sparingly to avoid altering the soil's pH too much.")
            }
            .padding(.top, 20)
        }
    }
}

struct FAQCardView: View {
    var question: String
    var answer: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(question)
                .font(.headline)
                .padding(.top, 10)
            
            Text(answer)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.bottom, 10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 15)
    }
}

struct PlantFAQView_Previews: PreviewProvider {
    static var previews: some View {
        PlantFAQView()
    }
}
