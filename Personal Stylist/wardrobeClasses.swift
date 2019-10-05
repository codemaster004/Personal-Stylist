//
//  clotheClass.swift
//  Personal Stylist
//
//  Created by Filip on 07/08/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import Foundation

enum Clothe {
    case shirt
    case chelsea
    case jeans
    case snickers
    case tShirt
    case leatherJa
    case denimJa
    case chinos
    case polo
    case pilotJa
    case shorts
    case highSnickers
    case doubleMonks
    case linenJa
    case flannel;
}

enum Color {
    case none
    case brown
    case darkGray
    case lighrGray
    case gray
    case darkRed
    case lightRed
    case Red
    case babyBlue
    case lightBlue
    case navy
    case darkBlue
    case blue
    case white
    case black
    case khaki
}

enum Pattern {
    case none
    case uniform
    case flowers
    case faded
    case sleeves
    case crocheted
}

enum Structure {
    case none
    case solid
    case denim
    case slick
    case suede
    case linen
}

enum Style {
    case none
    case casual
    case smartCasual
    case elegant
}

enum Type {
    case none
    case classic
    case base
    case modern
}

class NewClothe {
    let clothe: String
    let mainColor: String
    let secondColor: String
    let thirdColor: String
    let name: String
    let pattern: String
    let structure: String
    let style: String
    let type: String
    
    init(clothe: String, mainC: String, secondC: String, thirdC: String, name: String, pattern: String, structure: String, style: String, type: String) {
        self.clothe = clothe
        self.mainColor = mainC
        self.secondColor = secondC
        self.thirdColor = thirdC
        self.name = name
        self.pattern = pattern
        self.structure = structure
        self.style = style
        self.type = type
    }
}
