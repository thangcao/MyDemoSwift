//
//  MyModel.swift
//  DemoReview
//
//  Created by Cao Thắng on 9/21/16.
//  Copyright © 2016 Cao Thắng. All rights reserved.
//

import UIKit

class MyModel: NSObject {
    var title: String
    var image: UIImage
    var overview: String?
    var time: String?
    override init() {
        title = ""
        image = UIImage(named: "home_office")!
        overview = ""
        time = ""
    }
}
