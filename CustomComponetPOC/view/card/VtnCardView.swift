//
//  VtnCardView.swift
//  CustomComponetPOC
//
//  Created by Ventuno Technologies on 28/05/20.
//  Copyright © 2020 Ventuno Technologies. All rights reserved.
//

import UIKit

class VtnCardView:UIView{
    
    public func instanceFromNib() -> UIView {
        return UINib(nibName: "VtnCardView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        print("Focus",isFocused)
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations({ () -> Void in
                self.layer.backgroundColor = UIColor.blue.withAlphaComponent(0.2).cgColor
                
                
               self.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)

                self.layer.shadowOffset = CGSize(width: 0, height: self.bounds.height*0.12)
                self.layer.shadowRadius = 15
            
               
                
            }, completion: nil)
            
        } else if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations({ () -> Void in
                self.layer.backgroundColor = UIColor.green.cgColor
                
                self.transform = CGAffineTransform.identity
                
                
            }, completion: nil)
        }
        
        
    }
    
    override var canBecomeFocused: Bool{
        return true
    }
}
