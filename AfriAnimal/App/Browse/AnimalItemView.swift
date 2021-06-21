//
//  AnimalItemView.swift
//  AfriAnimal
//
//  Created by Uwais Alqadri on 21/06/21.
//

import SwiftUI

struct AnimalItemView: View {

  let animal: Animal

  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(animal.image)
        .resizable()
        .frame(width: 90, height: 90)
        .clipShape(
          RoundedRectangle(cornerRadius: 12)
        )

      VStack(alignment: .leading, spacing: 8) {
        Text(animal.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)

        Text(animal.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing, 8)
      }
    }
  }
}

struct AnimalItemView_Previews: PreviewProvider {

  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    AnimalItemView(animal: animals[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
