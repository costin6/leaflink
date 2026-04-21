import SwiftUI

struct ChartView: View {
    var body: some View {
        
        VStack{
            VStack{
                Image( "analysis")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 20)
            }
            
            VStack {

                HStack() {
                    Image( "forest")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 10)

                    Text("trees planted: 10")
                        .font(.headline)
                    Spacer()
                }
                

                HStack {
                    Image( "save")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 10)

                    Text("Impact: 0.02%")
                        .font(.headline)
                    Spacer()
                }
                
                
                HStack {

                    VStack(alignment: .leading){
                        Text("You helped to reduce what")
                            .font(.headline)
                        Text(" equivalent to the impact of")
                            .font(.headline)
                        Text("2 cars during weeks")
                            .font(.headline)
                    }

                    VStack{
                        Image( "car")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 10)
                        Image( "car")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 10)
                    }
                    


                }
                .padding()
            }
            .frame(width: .infinity, height: 300)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .padding(.horizontal,25)
        

    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
