//
//  HourlyWeatherView.swift
//  WeatherApp
//
//  Created by Elizeu RS on 05/04/21.
//

import SwiftUI

struct HourlyWeatherView: View {
  @ObservedObject var cityVM: CityViewViewModel
  
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 20) {
          ForEach(cityVM.weather.hourly) { weather in
            let icon = cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
            let hour = cityVM.getTimeFor(timestamp: weather.dt)
            let temp = cityVM.getTempFor(temp: weather.temp)
            getHourlyView(hour: hour, image: icon, temp: temp)
            
          }
        }
      }
      .padding(.bottom)
    }
  
  private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
    VStack(spacing: 20) {
      Text(hour)
      image
        .foregroundColor(.yellow)
      Text(temp)
    }
    .foregroundColor(.white)
    .padding()
    .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)))
    .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
  }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
      HourlyWeatherView(cityVM: CityViewViewModel())
    }
}
