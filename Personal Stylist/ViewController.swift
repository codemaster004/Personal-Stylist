//
//  ViewController.swift
//  Personal Stylist
//
//  Created by Filip on 06/08/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clotheImage1: UIImageView!
    @IBOutlet weak var clotheImage2: UIImageView!
    @IBOutlet weak var clotheImage3: UIImageView!
    @IBOutlet weak var clotheImage4: UIImageView!
    
    var choosedColorNum: Int = 0
    var choosedClotheNum: Int = 0
    var choosedColorCombi = ["", "", "", ""]
    var choosedClotheCombi = ["", "", "", ""]
    
    var filteredWithColor = [[NewClothe](), [NewClothe](), [NewClothe](), [NewClothe]()]
    var filteredWithClothe = [[NewClothe](), [NewClothe](), [NewClothe](), [NewClothe]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.clotheImage1.layer.cornerRadius = 20
        self.clotheImage1.layer.masksToBounds = true
        self.clotheImage2.layer.cornerRadius = 20
        self.clotheImage2.layer.masksToBounds = true
        self.clotheImage3.layer.cornerRadius = 20
        self.clotheImage3.layer.masksToBounds = true
        self.clotheImage4.layer.cornerRadius = 20
        self.clotheImage4.layer.masksToBounds = true
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setCombinations()
    }
    
    func filterForClothe() {
        filteredWithClothe = [[NewClothe](), [NewClothe](), [NewClothe](), [NewClothe]()]
        
        for clothe in outLa {
            if clothe.clothe == choosedClotheCombi[0] {
                filteredWithClothe[0].append(clothe)
            }
        }
        for clothe in topLa {
            if clothe.clothe == choosedClotheCombi[1] {
                filteredWithClothe[1].append(clothe)
            }
        }
        for clothe in middleLa {
            if clothe.clothe == choosedClotheCombi[2] {
                filteredWithClothe[2].append(clothe)
            }
        }
        for clothe in bottomLa {
            if clothe.clothe == choosedClotheCombi[3] {
                filteredWithClothe[3].append(clothe)
            }
        }
    }
    
    func filterForColor() {
        filteredWithColor = [[NewClothe](), [NewClothe](), [NewClothe](), [NewClothe]()]
        
        if filteredWithClothe[0].count == 0 || filteredWithClothe[1].count == 0 || filteredWithClothe[2].count == 0 || filteredWithClothe[3].count == 0 {
            setCombinations()
        } else {
            for clothe in filteredWithClothe[0] {
                if clothe.mainColor == choosedColorCombi[0] {
                    filteredWithColor[0].append(clothe)
                }
            }
            for clothe in filteredWithClothe[1] {
                if clothe.mainColor == choosedColorCombi[1] {
                    filteredWithColor[1].append(clothe)
                }
            }
            for clothe in filteredWithClothe[2] {
                if clothe.mainColor == choosedColorCombi[2] {
                    filteredWithColor[2].append(clothe)
                }
            }
            for clothe in filteredWithClothe[3] {
                if clothe.mainColor == choosedColorCombi[3] {
                    filteredWithColor[3].append(clothe)
                }
            }
        }
    }
    
    func showMyOutfit() {
        
        if filteredWithColor[0].count == 0 || filteredWithColor[1].count == 0 || filteredWithColor[2].count == 0 || filteredWithColor[3].count == 0 {
            setCombinations()
        } else if filteredWithColor[0].count > 1 || filteredWithColor[1].count > 1 || filteredWithColor[2].count > 1 || filteredWithColor[3].count > 1 {
            clotheImage1.image = UIImage(named: filteredWithColor[0][Int.random(in: 0...filteredWithColor[0].count - 1)].name)
            clotheImage2.image = UIImage(named: filteredWithColor[1][Int.random(in: 0...filteredWithColor[1].count - 1)].name)
            clotheImage3.image = UIImage(named: filteredWithColor[2][Int.random(in: 0...filteredWithColor[2].count - 1)].name)
            clotheImage4.image = UIImage(named: filteredWithColor[3][Int.random(in: 0...filteredWithColor[3].count - 1)].name)
        } else {
            clotheImage1.image = UIImage(named: filteredWithColor[0][0].name)
            clotheImage2.image = UIImage(named: filteredWithColor[1][0].name)
            clotheImage3.image = UIImage(named: filteredWithColor[2][0].name)
            clotheImage4.image = UIImage(named: filteredWithColor[3][0].name)
        }

    }
    
    func setCombinations() {
        choosedColorNum = Int.random(in: 0...colorCombinations.count - 1)
        choosedClotheNum = Int.random(in: 0...clotheCombinations.count - 1)
        choosedColorCombi = colorCombinations[choosedColorNum]
        choosedClotheCombi = clotheCombinations[choosedClotheNum]
        
        filterForClothe()
        filterForColor()
        showMyOutfit()
    }
}
