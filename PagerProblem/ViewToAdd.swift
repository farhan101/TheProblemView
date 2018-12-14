//
//  ViewToAdd.swift
//  PagerProblem
//
//  Created by Farhan Arshad on 14/12/2018.
//  Copyright © 2018 Me. All rights reserved.
//

import Foundation
import UIKit

let  LABEL_WIDTH: CGFloat  = 80.0
let  LABEL_HEIGHT: CGFloat = 20.0

class ViewToAdd: UIView{
    
    var mFrame: CGRect?
    var mYFactor: CGFloat = 2.0
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init(frame: CGRect, yFactor: CGFloat = 2.0) {
        self.mFrame = frame
        self.mYFactor = yFactor
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        
        let label: UILabel  = UILabel(frame: CGRect(x:(self.bounds.size.width - LABEL_WIDTH)/2+20,                                                      y: (self.bounds.size.height - LABEL_HEIGHT) / self.mYFactor,
                                                    width: LABEL_WIDTH,
                                                    height: LABEL_HEIGHT))
        
        label.text = "Loading..."
        label.textColor = UIColor.red
        let spinner : UIActivityIndicatorView  = UIActivityIndicatorView(style: .white)
        spinner.color = UIColor.red
        spinner.frame = CGRect(x: label.frame.origin.x - LABEL_HEIGHT - 5,
                               y: label.frame.origin.y,
                               width: LABEL_HEIGHT,
                               height: LABEL_HEIGHT)
        spinner.startAnimating()
        self.addSubview(spinner)
        self.addSubview(label)
    }
}

