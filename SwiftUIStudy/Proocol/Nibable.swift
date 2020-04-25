//
//  Nibable.swift
//  SwiftUIStudy
//
//  Created by Takuya Aso on 2020/04/24.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

protocol Nibable: class {
    associatedtype Instance
    static var nibName: String { get }
    static var nib: UINib { get }
    static func instantiateView() -> Instance
}

extension Nibable where Self: UIView {

    static var nibName: String {
        return String(describing: self)
    }

    static var nib: UINib {
        return UINib(nibName: nibName, bundle: nil)
    }

    static func instantiateView() -> Self {
        return nib.instantiate(withOwner: nib, options: nil)[0] as! Self
    }
}
