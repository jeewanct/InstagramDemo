//
//  GradienView.swift
//  Instagram
//
//  Created by Jeevan chandra on 27/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class GradientView: UIView{
    var gradientColor: CAGradientLayer?
    var currentIndex = -1
    var firstColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).cgColor
    var secondColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).cgColor
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        translatesAutoresizingMaskIntoConstraints = false
        animate()
      
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: UI Elements
    
    let colors: [ColorModel] = {
        let first = ColorModel(firstColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), secondColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        let second = ColorModel(firstColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1) , secondColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        let third = ColorModel(firstColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1) , secondColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        let fourth = ColorModel(firstColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1) , secondColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        let fifth = ColorModel(firstColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) , secondColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        let sixth = ColorModel(firstColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) , secondColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
        return [first,second,third,fourth,fifth,sixth]
        
    }()
    

    // MARK: Custom Delegates

    func animate(){
       
        currentIndex = currentIndex == colors.count - 1 ? 0: currentIndex + 1
        UIView.transition(with: self, duration: 5, options: [.transitionCrossDissolve], animations: {
            
            self.firstColor = (self.colors[self.currentIndex].firstColor?.cgColor)!
            self.secondColor = (self.colors[self.currentIndex].secondColor?.cgColor)!
            self.layoutSubviews()
            
        }) { (value) in
            self.animate()
        }
        
       

    }
    
    func updateView(){
        
    }
    
    
    override func layoutSubviews() {
        gradientColor = CAGradientLayer()
        gradientColor?.frame = frame
        gradientColor?.colors = [firstColor, secondColor]
        gradientColor?.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientColor?.endPoint = CGPoint(x: 1.0, y: 0.5)
        layer.addSublayer(gradientColor!)

        
    }


}
