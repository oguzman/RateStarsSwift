//
//  RateView.swift
//  Pods
//
//  Created by Omar Guzman on 3/21/16.
//
//

import UIKit

public class RateView: UIView {
    // MARK: Properties
    public var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    var ratingButtons = [UIButton]()
    var spacing = 5
    var stars = 5
    
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
    }
    
    // MARK: Storyboard Initialization
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addComponents()
    }
    
    func addComponents()
    {
        var bundle = NSBundle(forClass: self.classForCoder)
        if let bundlePath = NSBundle(forClass: self.classForCoder).resourcePath?.stringByAppendingString("/RateStarsSwift.bundle"), resourceBundle = NSBundle(path: bundlePath) {
            bundle = resourceBundle
        }
        
        let filledStarImage = UIImage(named: "star_full.png", inBundle: bundle, compatibleWithTraitCollection: nil)
        let emptyStarImage = UIImage(named: "star_empty.png", inBundle: bundle, compatibleWithTraitCollection: nil)
        
        for _ in 0..<stars {
            let rateButton = UIButton()
            rateButton.setImage(emptyStarImage, forState: .Normal)
            rateButton.setImage(filledStarImage, forState: .Selected)
            rateButton.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            rateButton.adjustsImageWhenHighlighted = false
            rateButton.addTarget(self, action:#selector(ratingButtonTapped(_:)), forControlEvents: .TouchUpInside)
            ratingButtons += [rateButton]
            addSubview(rateButton)
        }
    }
    
    override public func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonSelectionStates()
    }
    
    override public func intrinsicContentSize() -> CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize + spacing) * stars
        return CGSize(width: width, height: buttonSize)
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        rating = ratingButtons.indexOf(button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in ratingButtons.enumerate() {
            button.selected = index < rating
        }
    }
}