//
//  ViewController.swift
//  GithubActionsTest
//
//  Created by Simon Bromberg on 2021-08-04.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tapButton() {
        let alert = UIAlertController(title: "You did it!", message: "Now close the alert!", preferredStyle: .alert)
        alert.addAction(.init(title: "Done", style: .default, handler: nil))
        present(alert, animated: true)
    }
}

