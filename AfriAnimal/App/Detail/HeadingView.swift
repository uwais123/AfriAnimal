//
//  HeadingView.swift
//  AfriAnimal
//
//  Created by Uwais Alqadri on 21/06/21.
//

import SwiftUI

struct HeadingView: View {

  var headingImage: String
  var headingText: String

  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundColor(.accentColor)

      Text(headingText)
        .font(.title3)
        .fontWeight(.bold)
    }
    .padding(.vertical)
  }
}
