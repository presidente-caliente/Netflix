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
    
    // create view: any subclass inherits
    override init(frame: CGRect) {
        // documentation defines when to call super
        super .init(frame: frame)
        
        addSubview(heroImageView)
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
