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
        fetchAllBreeds()
    }
    
    func fetchAllBreeds(){
        
        isLoading = true
        
        let url = URL(string: "https://api.thecatapi.com/v1/vreeds?limit=9")!
        
        let task = URLSession.shared.dataTask(with: url) {[unowned self] data, response, error in
            
            self.isLoading = false
            let decoder = JSONDecoder()
            if let data = data{
                do{
                    let breeds = try decoder.decode([CatBreed].self, from: data)
        
                    DispatchQueue.main.async {
                        self.breeds = breeds
                    }
                    
                } catch{
                    print(error)
                }
            }
        }
        
        task.resume()
    }
}
