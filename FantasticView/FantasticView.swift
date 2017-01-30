//
//  FantasticView.swift
//  FantasticView
//
//  Created by Huy Vu on 1/27/17.
//  Copyright © 2017 HomeMade. All rights reserved.
//

import UIKit


/// View that auto-change background color
public class FantasticView: UIView {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .gray]
    var colorCounter = 0
    
    
    /// Adding the color rotation logic when initialize with frame
    ///
    /// - Parameter frame: frame to draw the view
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0, animations: { 
                self.layer.backgroundColor = self.colors[self.colorCounter % 7].cgColor
                self.colorCounter += 1
            })
        }
        
        scheduledColorChanged.fire()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
