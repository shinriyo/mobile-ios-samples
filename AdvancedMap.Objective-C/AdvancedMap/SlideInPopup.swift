//
//  SlideInPopup.swift
//  Feature Demo
//
//  Created by Aare Undo on 19/06/2017.
//  Copyright © 2017 CARTO. All rights reserved.
//

import Foundation
import UIKit

@objc class SlideInPopup : UIView {
    
    @objc var transparentArea: UIView!
    @objc var popup: PopupView!
    @objc var content: UIView!
    
    var hiddenY: CGFloat!
    var visibleY: CGFloat!
    
    convenience init() {
        self.init(frame: CGRect.zero)

        transparentArea = UIView()
        transparentArea.backgroundColor = UIColor.black
        transparentArea.alpha = 0
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(self.backgroundTapped(_:)))
        transparentArea.addGestureRecognizer(recognizer)
        
        popup = PopupView()
        
        addSubview(transparentArea)
        addSubview(popup)
    }
    
    func isVisible() -> Bool {
        return transparentArea.alpha == 0.5
    }
    
    override func layoutSubviews() {
        
        var x: CGFloat = 0
        var y: CGFloat = 0
        var w: CGFloat = frame.width
        var h: CGFloat = frame.height
        
        self.hiddenY = h
        self.visibleY = h - (h / 5 * 3)

        transparentArea.frame = CGRect(x: x, y: y, width: w, height: h)
        
        let wasVisible = isVisible()
        
        if (Device.isLandscape() || Device.isTablet()) {
            // Make the popup appear on the left side and full height.
            // Width of portrait iPhone 6. This number can be tweaked, but should be quite optimal
            w = 375
            if (Device.isTablet()) {
                self.visibleY = frame.height / 3 * 2
            } else {
                self.visibleY = Device.navigationbarHeight() + Device.statusBarHeight()
            }
        }
        
        y += h
        h = h - visibleY
        
        popup.frame = CGRect(x: x, y: y, width: w, height: h)
        
        if (wasVisible) {
            show()
        }
        
        if (content != nil) {
            x = 0
            y = 0
        }
        
        if (content != nil) {
            x = 0
            y = popup.header.height
            w = popup.frame.width
            h = popup.frame.height - popup.header.height
            
            content.frame = CGRect(x: x, y: y, width: w, height: h)
        }
    }
    
    @objc func backgroundTapped(_ sender: UITapGestureRecognizer) {
        hide()
    }

    @objc func setContent(content: UIView) {
        
        if (self.content != nil) {
            self.content.removeFromSuperview()
            self.content = nil
        }
        
        self.content = content
        popup.addSubview(self.content)
        
        layoutSubviews()
    }
    
    @objc func show() {
        superview?.bringSubviewToFront(self)
        slidePopupTo(y: visibleY)
    }
    
    @objc func hide() {
        slidePopupTo(y: hiddenY)
    }
    
    @objc func slidePopupTo(y: CGFloat) {

        UIView.animate(withDuration: 0.3, animations: {
            
            self.popup.frame = CGRect(x: self.popup.frame.origin.x, y: y, width: self.popup.frame.width, height: self.popup.frame.height)
            
            if (y.isEqual(to: self.hiddenY)) {
                self.transparentArea.alpha = 0
            } else {
                self.transparentArea.alpha = 0.5
            }
            
        }, completion: { (finished: Bool) -> Void in
            
            if (y.isEqual(to: self.hiddenY)) {
                self.superview?.sendSubviewToBack(self)
            }
            
        })
    }
}







