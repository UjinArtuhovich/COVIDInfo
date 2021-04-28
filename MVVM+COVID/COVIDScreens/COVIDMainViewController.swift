//
//  COVIDMainViewController.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 3/16/21.
//

import UIKit

class COVIDMainViewController: UIViewController {
    private var covidMainView: COVIDMainView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.backgroundColor = .white
    }
    private func createView() {
        covidMainView = COVIDMainView()
        covidMainView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        covidMainView.view = true
        view.addSubview(covidMainView)
    }
}
