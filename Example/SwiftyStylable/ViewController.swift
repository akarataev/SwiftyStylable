//
//  ViewController.swift
//  SwiftyStylable
//
//  Created by akarataev on 03/22/2019.
//  Copyright (c) 2019 akarataev. All rights reserved.
//

import UIKit
import SwiftyStylable

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.apply(.viewStyle(color: .green))
    }
}


// MARK: - implement styles for UIView

extension SwiftyStyle where Control == UIView {
    
    static func viewStyle(color: UIColor) -> SwiftyStyle {
        return .style { view in view.backgroundColor = color }
    }
}

