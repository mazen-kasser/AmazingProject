//
//  UITableView+Extensions.swift
//  AmazingProject
//
//  Created by Mazen Kasser on 27/07/17.
//  Copyright © 2017 Mazen Kasser. All rights reserved.
//

import UIKit

public extension UITableView {
    
    /// Registers a cell from a nib with a reuse identifier set to the class name.
    func register<T: UITableViewCell>(_ cellType: T.Type) {
        let typeString = String(describing: cellType)
        self.register(UINib(nibName: typeString, bundle: nil), forCellReuseIdentifier: typeString)
    }
    
    /// Registers a cell from its class with a reuse identifier set to the class name.
    ///
    /// Use this call when you have created a cell class with no associated nib.
    func register<T: UITableViewCell>(fromClass cellType: T.Type) {
        register(cellType, forCellReuseIdentifier: String(describing: cellType))
    }
    
    /// Dequeues a registered cell with a reuse identifier set to the class name.
    ///
    /// Returns a strongly typed object of the correct type
    func dequeue<T: UITableViewCell>(_ cellType: T.Type) -> T {
        let typeString = String(describing: cellType)
        guard let cell = dequeueReusableCell(withIdentifier: typeString) as? T else {
            fatalError("Could not dequeue cell with identifier: \(typeString)")
        }
        return cell
    }
}
