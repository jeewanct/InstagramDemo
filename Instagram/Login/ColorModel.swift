//
//  ColorModel.swift
//  Instagram
//
//  Created by JEEVAN TIWARI on 27/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class ColorModel: NSObject{
    
    var firstColor: UIColor?
    var secondColor: UIColor?
    init(firstColor: UIColor,secondColor: UIColor) {
        self.firstColor = firstColor
        self.secondColor = secondColor
    }
}
