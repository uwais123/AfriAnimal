//
//  ContentView.swift
//  AfriAnimal
//
//  Created by Uwais Alqadri on 21/06/21.
//

import SwiftUI

struct ContentView: View {

  let animals: [Animal] = Bundle.main.decode("animals.json")

  var body: some View {
    NavigationView {
      List {
        CoverImageView()
          .frame(height: 300)
          .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

        ForEach(animals) { item in
          NavigationLink(destination: AnimalDetailView(animal: item)) {
            AnimalItemView(animal: item)
          }
        }
      }.navigationBarTitle("Africa", displayMode: .large)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
