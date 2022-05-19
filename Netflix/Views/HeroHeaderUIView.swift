//
//  HeroHeaderUIView.swift
//  Netflix
//
//  Created by Joyce on 5/15/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    // define the image view of heroImageView object
    private let heroImageView: UIImageView = {
        
        let imageView = UIImageView()
        
        // fill view
        imageView.contentMode = .scaleAspectFill
        
        // confine to bounds
        imageView.clipsToBounds = true
        
        
        imageView.image = UIImage(named: "HeroImage")
        
        
        
        return imageView
    }()
    
    // add gradient to hero header view image
    func addGradient(){
        
        let gradientLayer = CAGradientLayer()
        
        // create colors array
        gradientLayer.colors = [
            UIColor.clear.cgColor, // let the image show through gradiant
            UIColor.systemBackground.cgColor // fade into background color
        ]
        
        // define the subview properites in window
        gradientLayer.frame = bounds
        
        // add the gradiant subview as a sublayer to the core layer
        layer.addSublayer(gradientLayer)
        
    }
    
    // create view: any subclass inherits
    override init(frame: CGRect) {
        // documentation defines when to call super
        super .init(frame: frame)
        
        addSubview(heroImageView)
        
        addGradient()
    }
    
    
    
    // define custom subview layouts
    /* suggestion: use setNeedsLayout() instead */
    override func layoutSubviews() {
        super.layoutSubviews()
        
        heroImageView.frame = bounds;
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
