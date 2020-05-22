//
//  CircleActionButton.swift
//  CircleMenu$
//
//  Created by abdullah on 28/09/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit

class CircleActionButton: UIButton {

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        UIView.animate(withDuration: 0.3, animations: {
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 120 * (.pi / 180))
                self.backgroundColor = #colorLiteral(red: 0.898, green: 0.8863, blue: 0.8588, alpha: 1) /* #e5e2db */

            } else{
                self.transform = .identity
                self.backgroundColor =  #colorLiteral(red: 0.7529, green: 0.7529, blue: 0.7529, alpha: 1) /* #c0c0c0 */
    
            }
        })
        return super.beginTracking(touch, with: event)
    }
    
//    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
//        <#code#>
//    }
//    
    
    
    
    
    
    
    
    

}
