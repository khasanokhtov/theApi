//
//  ContentView.swift
//  CatProject
//
//  Created by Alex Okhtov on 02.07.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var breedFetcher = BreedFetcher()
    var body: some View {
       
        if breedFetcher.isLoading{
            LoadingView()
        }else if breedFetcher.errorMessage != nil{
            ErrorView(breedFetcher: breedFetcher)
        }else{
            _BreedListView(breeds: breedFetcher.breeds)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
