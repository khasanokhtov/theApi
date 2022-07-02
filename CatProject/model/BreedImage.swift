//
//  BreedImage.swift
//  CatProject
//
//  Created by Alex Okhtov on 02.07.2022.
//

import Foundation


/*
 "Image":{
    "height": 1445,
    "id": "0XYvRd7oD",
    "url": "https://cdnn2.thecatapi.com/images/0XYvRd7oD.jpg",
    "width": 1204
 }
 */

struct BreedImage: Codable{
    let height: Int?
    let id: String?
    let url: String?
    let width: Int?
}
