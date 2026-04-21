import SwiftUI

struct EventsView: View {
    @State private var searchText = ""
    @State private var selectedDate = Date()
    @State private var selectedCityIndex = 0
    @State private var isJoining = false
    let cities = ["Amsterdam", "Rotterdam", "The Hague", "Utrecht", "Eindhoven"]
    

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                ZStack {
                    TextField("Search...", text: $searchText)
                        .padding(.horizontal)
                        .frame(height: 40)
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                        .padding()
                    
                    HStack {
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing, 30)
                    }
                }
                
                HStack {
                    DatePicker(
                        "Select a Date",
                        selection: $selectedDate,
                        displayedComponents: .date
                    )
                    .labelsHidden()
                    .datePickerStyle(DefaultDatePickerStyle())
                    .frame(height: 40)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 5)
                    
                    Picker(
                        selection: $selectedCityIndex,
                        label: Text("Select a City")
                        
                    ) {
                        ForEach(0..<cities.count, id: \.self) { index in
                            Text(cities[index]).tag(index)
                                .foregroundColor(Color.black)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(width: 150)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 5)
                }
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .shadow(radius: 5)
                        .frame(height: 450)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "tree")
                                .foregroundColor(.green)
                            Text("Ryan")
                                .font(.headline)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.horizontal,10)
                        
                        Image("event")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: .infinity)
                        
                        Text("Trees for wildlife")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal,10)
                        
                        Text("Thu 20 Oct")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.horizontal,10)
                        
                        HStack {
                            Text("Frank, Robert and 100 others")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Spacer()
                            NavigationLink("", destination: ChatView(), isActive: $isJoining)
                            Button(action: {
                                isJoining = true
                            }) {
                                Text("join")
                                    .font(.footnote)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 16)
                    }
                }
                .padding()
                Spacer()
            }
            .padding()
        }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
