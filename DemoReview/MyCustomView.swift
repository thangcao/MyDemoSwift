//
//  MyCustomView.swift
//  DemoReview
//
//  Created by Cao Thắng on 9/21/16.
//  Copyright © 2016 Cao Thắng. All rights reserved.
//

import UIKit

class MyCustomView: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    func circleImageView() {
        self.layer.cornerRadius =
            self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
    func borderView(radius: CGFloat, color: CGColor){
        self.clipsToBounds = true
        self.layer.borderColor = color
        self.layer.borderWidth = radius
    }
}
