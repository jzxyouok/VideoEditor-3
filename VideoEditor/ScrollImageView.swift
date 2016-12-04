//
//  ScrollImageView.swift
//  VideoEditor
//
//  Created by Елена Яновская on 04/12/16.
//  Copyright © 2016 Елена Яновская. All rights reserved.
//

import UIKit

class ScrollImageView: UIImageView, UIGestureRecognizerDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touched")
        
    }
    
}

