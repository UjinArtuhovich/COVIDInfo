//
//  File1.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 4/4/21.
//

import UIKit
class COVIDMainView: UIView {
    var covidInfoViewModel: COVIDInfoViewModel!
    lazy var MainView = makeMainView()
    lazy var C19Title = makeC19Title()
    lazy var AYFSLabel = makeAYFSLabel()
    lazy var PreventionLabel = makePreventionLabel()
    lazy var CleanImage = makeCleanImage()
    lazy var AvoidImage = makeAvoidImage()
    lazy var WearImage = makeWearImage()
    lazy var CleanTitle = makeCleanTitle()
    lazy var AvoidTitle = makeAvoidTitle()
    lazy var WearTitle = makeWearTitle()
    lazy var Gradient = makeGradient()
    lazy var TestView = makeTestView()
    lazy var MainTestLabel = makeMainTestLabel()
    lazy var SecondaryTestLabel = makeSecondaryTestLabel()
    lazy var ToTestButton = makeToTestButton()
    lazy var TestImageView = makeTestImageView()
    lazy var InstructionLabel = makeInstructionLabel()
    lazy var CallButton = makeCallButton()
    lazy var CallLabel = makeCallLabel()
    lazy var CallImage = makeCallImage()
    lazy var CountryView = makeCountryView()
    lazy var CountryLabel = makeCountryLabel()
    lazy var FlagImage = makeFlagImage()
    var view: Bool! {
        didSet {
            createView()
        }
    }
    override func setNeedsLayout() {
        super.setNeedsLayout()
        //Gradient.frame = TestView.bounds
    }
    private func createView() {
        Gradient.frame = TestView.bounds
        MainView.isHidden = false
        C19Title.isHidden = false
        AYFSLabel.isHidden = false
        PreventionLabel.isHidden = false
        CleanImage.isHidden = false
        AvoidImage.isHidden = false
        WearImage.isHidden = false
        CleanTitle.isHidden = false
        AvoidTitle.isHidden = false
        WearTitle.isHidden = false
        MainTestLabel.isHidden = false
        SecondaryTestLabel.isHidden = false
        ToTestButton.isHidden = false
        TestImageView.isHidden = false
        InstructionLabel.isHidden = false
        CallButton.isHidden = false
        CallLabel.isHidden = false
        CallImage.isHidden = false
        CountryView.isHidden = false
        CountryLabel.isHidden = false
        FlagImage.isHidden = false
    }
}
