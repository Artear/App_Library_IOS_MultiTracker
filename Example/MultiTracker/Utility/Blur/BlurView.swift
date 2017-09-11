//
//  BlurView.swift
//  MultiTracker
//
//  Created by Jose Luis Sagredo on 11/9/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class BlurView: UIView {

    @IBInspectable var image: UIImage = #imageLiteral(resourceName: "Background")
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let imageView = UIImageView(
            frame: CGRect(
                origin: .zero,
                size: self.bounds.size
            )
        )
        
        imageView.image = image
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.contentMode = .scaleAspectFill
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = imageView.frame
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.addSubview(blurEffectView)
        
        self.insertSubview(imageView, at: 0)
    }

}
