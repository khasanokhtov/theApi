//
//  ErrorView.swift
//  CatProject
//
//  Created by Alex Okhtov on 02.07.2022.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var breedFetcher: BreedFetcher
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
