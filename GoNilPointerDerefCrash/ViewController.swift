//
//  ViewController.swift
//  GoNilPointerDerefCrash
//
//  Created by Hampus Sjöberg on 2023-12-15.
//

import Cocoa
import Gopointerderefcrash
import AppKit

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonX = 150
        let buttonY = 150
        let buttonWidth = 100
        let buttonHeight = 50

        let button = NSButton(frame: NSRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
        button.title = "Click here"
        button.bezelStyle = .rounded
        button.action = #selector(buttonClicked)

        self.view.addSubview(button)
    }

    @objc func buttonClicked(sender : NSButton){
        print("Button clicked")
        GopointerderefcrashTestDeref()
        print("After button clicked")
    }

}

