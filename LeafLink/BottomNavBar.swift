import SwiftUI
import CoreLocation

struct BottomNavigationBar: View {
    let pins: [Pin] = [
        Pin(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        Pin(coordinate: CLLocationCoordinate2D(latitude: 37.7750, longitude: -122.4195)),
        // Add more pins as needed
    ]
    var body: some View {
        NavigationView{
            TabView {
                HomePageView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                ZStack {
                    
                    VStack{
                        
                        MapView(latitude: 37.7749, longitude: -122.4194)
                            .edgesIgnoringSafeArea(.all)
                        
                    }
                    
                    VStack{
                        HStack{
                            Spacer()
                            NavigationLink(destination:EventsView() ) {
                                Image("messenger")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(10)
                                    .foregroundColor(.blue)
                                    .background(Color.white)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                                
                            }
                            Spacer()
                            NavigationLink(destination: CameraView()) {
                                Image("camera")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(10)
                                    .foregroundColor(.blue)
                                    .background(Color.white)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                            }
                            Spacer()
                            NavigationLink(destination: ChartView()) {
                                Image("chart")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(10)
                                    .foregroundColor(.blue)
                                    .background(Color.white)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                            }
                            Spacer()
                            
                        }
                        .padding(.vertical,10)
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.5068666348, green: 0.7601982355, blue: 0.6741289496, alpha: 1)))
                        .cornerRadius(35)
                        .padding(.horizontal,20)
                        Spacer()
                    }
                    
                    
                }
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Add Plant")
                }
                SquaresView()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Guide")
                    }
            }
            .accentColor(Color.green)
            .background(Color.green.opacity(0.1))
        }
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}
