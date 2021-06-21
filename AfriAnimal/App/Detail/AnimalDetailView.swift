//
//  AnimalDetailView.swift
//  AfriAnimal
//
//  Created by Uwais Alqadri on 21/06/21.
//

import SwiftUI

struct AnimalDetailView: View {

  let animal: Animal

  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {

        Image(animal.image)
          .resizable()
          .scaledToFit()

        Text(animal.name.uppercased())
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .padding(.vertical, 8)
          .foregroundColor(.primary)
          .background(
            Color.accentColor
              .frame(height: 6)
              .offset(y: 24)
          )

        Text(animal.headline)
          .font(.headline)
          .multilineTextAlignment(.leading)
          .foregroundColor(.accentColor)
          .padding(.horizontal)

        Group {
          HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")

          InsetGalleryView(animal: animal)
        }

      }.navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
    }
  }
}

struct AnimalDetailView_Previews: PreviewProvider {
  static let animas: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    AnimalDetailView(animal: animas[0])
  }
}
