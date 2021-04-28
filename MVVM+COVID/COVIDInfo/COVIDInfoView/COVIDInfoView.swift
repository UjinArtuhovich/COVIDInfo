//
//  View.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/8/20.
//

import UIKit
class COVIDInfoView: UIView {
    var covidInfoViewModel: COVIDInfoViewModel!
    lazy var SegmentedControl = makeSegmentedControl()
    lazy var TodayButton = makeTodayButton()
    lazy var TotalButton = makeTotalButton()
    lazy var Stack = makeStackForButtons()
    lazy var AffectedView = makeAffectedView()
    lazy var RecoveredView = makeRecoveredView()
    lazy var DeathView = makeDeathView()
    lazy var AffectedLabel = makeAffectedLabel()
    lazy var RecoveredLabel = makeRecoveredLabel()
    lazy var DeathLabel = makeDeathLabel()
    lazy var AffectedAmountLabel = makeAffectedAmountLabel()
    lazy var RecoveredAmountLabel = makeRecoveredAmountLabel()
    lazy var DeathAmountLabel = makeDeathAmountLabel()
    lazy var SecondView = makeSecondView()
    lazy var DNCLabel = makeDNCLabel()
    lazy var StatisticsLabel = makeStatisticsLabel()
    var segmentCount = 0
    var view: Bool! {
        didSet {
            createView()
        }
    }
    var data: COVIDInfoData? = nil {
        didSet {
            updateGlobal()
        }
    }
    var date: Int = 0 {
        didSet {
            if segmentCount == 0 {
                updateGlobal()
            } else {
                updateCountry()
            }
        }
    }
    private func createView() {
        SegmentedControl.addTarget(self, action: #selector(indexChanged(_:)), for: .valueChanged)
        TodayButton.addTarget(self, action: #selector(actionForTodayButton), for: .touchUpInside)
        TotalButton.addTarget(self, action: #selector(actionForTotalButton), for: .touchUpInside)
        Stack.isHidden = false
        AffectedView.isHidden = false
        RecoveredView.isHidden = false
        DeathView.isHidden = false
        AffectedLabel.isHidden = false
        RecoveredLabel.isHidden = false
        DeathLabel.isHidden = false
        SecondView.isHidden = false
        DNCLabel.isHidden = false
        StatisticsLabel.isHidden = false
        makeCharts()
    }
    private func updateGlobal() {
        guard let data = data else {return}
        if date == 0 {
            AffectedAmountLabel.text = Split().splitNumber(number: data.newGlobalConfirmed)
            RecoveredAmountLabel.text = Split().splitNumber(number: data.newGlobalRecovered)
            DeathAmountLabel.text = Split().splitNumber(number: data.newGlobalDeaths)
        } else {
            AffectedAmountLabel.text = Split().splitNumber(number: data.totalGlobalConfirmed)
            RecoveredAmountLabel.text = Split().splitNumber(number: data.totalGlobalRecovered)
            DeathAmountLabel.text = Split().splitNumber(number: data.totalGlobalDeaths)
        }
    }
    private func updateCountry() {
        guard let data = data else {return}
        if date == 0 {
            AffectedAmountLabel.text = Split().splitNumber(number: data.newCountryConfirmed)
            RecoveredAmountLabel.text = Split().splitNumber(number: data.newCountryRecovered)
            DeathAmountLabel.text = Split().splitNumber(number: data.newCountryDeaths)
        } else {
            AffectedAmountLabel.text = Split().splitNumber(number: data.totalCountryConfirmed)
            RecoveredAmountLabel.text = Split().splitNumber(number: data.totalCountryRecovered)
            DeathAmountLabel.text = Split().splitNumber(number: data.totalCountryDeaths)
        }
    }
    
    @objc func actionForTodayButton() {
        TotalButton.setTitleColor(Colors.shared.whiteWithAlphaComponent, for: .normal)
        TodayButton.setTitleColor(.white, for: .normal)
        date = 0
        
    }
    @objc func actionForTotalButton() {
        TodayButton.setTitleColor(Colors.shared.whiteWithAlphaComponent, for: .normal)
        TotalButton.setTitleColor(.white, for: .normal)
        date = 1
    }
    @objc func indexChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            segmentCount = 0
            updateGlobal()
        } else {
            segmentCount = 1
            updateCountry()
        }
    }
}
