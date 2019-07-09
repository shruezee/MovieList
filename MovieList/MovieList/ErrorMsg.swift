//
//  ErrorMsg.swift
//  MovieList
//
//  Created by shruthi palchandar on 8/7/19.
//  Copyright © 2019 Shruezee. All rights reserved.
//

import UIKit

let strError = "Something is wrong with json data"

public func DisplayError(_ onViewController:UIViewController) {
    print(strError)
    let alert = UIAlertController(title: "Error", message: strError, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    onViewController.present(alert, animated: true, completion: nil)
}
