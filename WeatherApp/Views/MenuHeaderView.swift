//
//  MenuHeaderView.swift
//  WeatherApp
//
//  Created by Elizeu RS on 05/04/21.
//

import SwiftUI

struct MenuHeaderView: View {
  
  @ObservedObject var cityVM: CityViewViewModel
  
  @State private var searchTerm = "San Francisco"
  
    var body: some View {
      HStack {
        TextField("", text: $searchTerm)
          .padding(.leading, 30)
        
        Button(action: {
          cityVM.city = searchTerm
        }, label: {
          ZStack {
            RoundedRectangle(cornerRadius: 10)
              .fill(Color.blue)
            
            Image(systemName: "location.fill")
          }
        })
        .frame(width: 50, height: 50)
      }
      .foregroundColor(.white)
      .padding()
      .background(ZStack (alignment: .leading) {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.white)
          .padding(.leading, 10)
        
        RoundedRectangle(cornerRadius: 10)
          .fill(Color.blue.opacity(0.5))
      })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
      MenuHeaderView(cityVM: CityViewViewModel())
//      ContentView()
    }
}
