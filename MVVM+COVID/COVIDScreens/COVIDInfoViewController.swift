//
//  ViewController.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/6/20.
//

import UIKit

class COVIDInfoViewController: UIViewController {
    
    private var covidInfoViewModel: COVIDInfoViewModel!
    private var covidInfoView: COVIDInfoView!
    override func viewDidLoad() {
        super.viewDidLoad()
        covidInfoViewModel = COVIDInfoBuilder.getViewModel()
        covidInfoViewModel.getData(country: "Belarus")
        updateView()
        createView()
    }
    override func viewDidLayoutSubviews() {
        view.backgroundColor = Colors.shared.myPurple
    }
    override func viewWillAppear(_ animated: Bool) {
        let alert = AlertController()
        guard let showAlert = alert.showAlert() else {return}
        present(showAlert, animated: true, completion: nil)
    }
    private func createView() {
        covidInfoView  = COVIDInfoView()
        covidInfoView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        covidInfoView.view = true
        view.addSubview(covidInfoView)
        
    }
    private func updateView() {
        covidInfoViewModel.dataViewUpdated = { [weak self] in
            self?.covidInfoView.data = self?.covidInfoViewModel.covidViewData
        }
    }
}


