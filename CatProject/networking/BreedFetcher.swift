//
//  BreedFetcher.swift
//  CatProject
//
//  Created by Alex Okhtov on 02.07.2022.
//

import Foundation

class BreedFetcher: ObservableObject {
    
    @Published var breeds = [CatBreed]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        
    }
    
    func fetchAllBreeds(){
        let url = URL(string: "https://api.thecatapi.com/v1/vreeds?limit=9")!
        
        let task = URLSession.shared.dataTask(with: url) { data, respose, error in
            
            let decoder = JSONDecoder()
            if let data = data{
                do{
                    let breeds = try decoder.decode([CatBreed].self, from: data)
                    print(breeds)
                } catch{
                    print(error)
                }
            }
        }
        
        task.resume()
    }
}
