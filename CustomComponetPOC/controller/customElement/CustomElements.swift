//
//  CustomElements.swift
//  CustomComponetPOC
//
//  Created by Ventuno Technologies on 28/05/20.
//  Copyright © 2020 Ventuno Technologies. All rights reserved.
//

import UIKit
import TVMLKit

class CustomElements: NSObject, TVInterfaceCreating {
   override init() {
       super.init()
       TVElementFactory.registerViewElementClass(TVTextElement.self, elementName: "copyright")
   }
}

extension CustomElements{
    //The system automatically calls the makeView(element:existingView:) function for every element in your TVML document
    
    func makeView(element: TVViewElement, existingView: UIView?) -> UIView? {
        if element.name == "copyright" {
//            let label = UILabel()
//            label.font = UIFont.boldSystemFont(ofSize: 16)
//            label.textColor = .black
//            label.textAlignment = NSTextAlignment.center
//            label.text = "Copyright information"
//            return label
            print("attributes",element.attributes,element.accessibilityElementIsFocused())
            
         
            return VtnCardView().instanceFromNib()
        }
        return nil
    }
}
