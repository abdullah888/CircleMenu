//
//  ViewController.swift
//  CircleMenu$
//
//  Created by abdullah on 28/09/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CircleView: UIView!
    
    
    @IBOutlet weak var AddButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddButton.backgroundColor = #colorLiteral(red: 0.7529, green: 0.7529, blue: 0.7529, alpha: 1) /* #c0c0c0 */
        AddButton.layer.cornerRadius = 64
        CircleView.layer.cornerRadius = 200
        
        closeMenu()
        //               AddButton.layer.shadowColor = UIColor.white.cgColor
        //               AddButton.layer.shadowOpacity = 1
        //               AddButton.layer.shadowOffset = CGSize(width: 5 , height : 0)
    }
    
    
    @IBAction func MainButton(_ sender: CircleActionButton) {
        
        UIView.animate(withDuration: 0.3, animations: {
            
            
            
            if self.CircleView.transform == .identity {
                
                //open
                self.closeMenu()
                
            } else {
                self.CircleView.transform = .identity
                
            }
        })
    }
    
    func closeMenu(){
        
        
        CircleView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        
    }
    
    


}

