//
//  Menu.swift
//  RestOrant
//
//  Created by Developer on 13/04/2018.
//  Copyright © 2018 Developer. All rights reserved.
//
import UIKit
import Foundation

struct MenuItem {
    
    var name: String
    var description: String
    var price: Double
    var category: CategoryEnum
    var imageURL: UIImage?
    
    init(name: String, description: String, price: Double, category: CategoryEnum, imageURL: UIImage?) {
        self.name = name
        self.description = description
        self.price = price
        self.category = category
        self.imageURL = imageURL
    }
}
