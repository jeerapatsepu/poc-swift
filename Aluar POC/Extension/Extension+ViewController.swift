//
//  Extension+ViewController.swift
//  Aluar POC
//
//  Created by Jeerapat Sripumngoen on 2/8/2568 BE.
//

import UIKit

extension UIViewController {
    func getScreenWidth() -> CGFloat {
        return view.window?.windowScene?.screen.bounds.width ?? 0.0
    }
}
