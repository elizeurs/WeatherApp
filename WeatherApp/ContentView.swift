//
//  ContentView.swift
//  WeatherApp
//
//  Created by Elizeu RS on 03/04/21.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var cityVM = CityViewViewModel()
  
    var body: some View {
      ZStack(alignment: .bottom) {
        VStack(spacing: 0) {
          MenuHeaderView(cityVM: cityVM).padding()
          ScrollView(showsIndicators: false) {
            CityView(cityVM: cityVM)
          }
          .padding(.top)
        }.padding(.top, 40)
      }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
      .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
