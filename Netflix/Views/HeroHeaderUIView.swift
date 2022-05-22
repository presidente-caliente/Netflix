//
//  HeroHeaderUIView.swift
//  Netflix
//
//  Created by Joyce on 5/15/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    // define the header download button
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    // define the header play button
    private let playButton: UIButton = {
        
        let button = UIButton()
        
        button.setTitle("Play", for: .normal)
        
        button.layer.borderColor = UIColor.white.cgColor
        
        button.layer.borderWidth = 1
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.layer.cornerRadius = 5
        
        return button
    }()
    
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
        
        addSubview(playButton)
        
        addSubview(downloadButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        let playButtonConstraints = [
            
            // distance from header left edge
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            
            // distance from bottom of header
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            
            // button width
            playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let downloadButtonConstraints = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        // activate play button constraints
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(downloadButtonConstraints)
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
