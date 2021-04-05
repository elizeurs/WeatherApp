//
//  CityNameView.swift
//  WeatherApp
//
//  Created by Elizeu RS on 05/04/21.
//

import SwiftUI

struct CityNameView: View {
  var city: String
  var date: String
  
    var body: some View {
      HStack {
        VStack(alignment: .center, spacing: 10) {
          Text(city)
            .font(.title)
            .bold()
          Text(date)
        }.foregroundColor(.blue)
      }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
      CityNameView(city: "San Francisco", date: "Monday, March 5, 2021")
    }
}
