//
//  File.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 4/4/21.
//

import UIKit
extension COVIDMainView {
    func makeMainView() -> UIView {
        let mv = UIView()
        mv.backgroundColor = Colors.shared.myPurple
        addSubview(mv)
        mv.translatesAutoresizingMaskIntoConstraints = false
        mv.heightAnchor.constraint(equalToConstant: 400).isActive = true
        mv.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mv.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mv.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mv.layer.cornerRadius = 40
        mv.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        return mv
    }
    func makePreventionLabel() -> UILabel {
        let pl = UILabel()
        pl.text = "Prevention"
        pl.font = UIFont.boldSystemFont(ofSize: 23)
        addSubview(pl)
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.topAnchor.constraint(equalTo: MainView.bottomAnchor, constant: 35).isActive = true
        pl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        return pl
    }
    func makeCleanImage() -> UIImageView {
        let ci = UIImageView()
        ci.image = UIImage(named: "clean")
        ci.contentMode = .scaleAspectFit
        addSubview(ci)
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.widthAnchor.constraint(equalToConstant: 110).isActive = true
        ci.heightAnchor.constraint(equalToConstant: 110).isActive = true
        ci.topAnchor.constraint(equalTo: PreventionLabel.bottomAnchor, constant: 30).isActive = true
        ci.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        ci.layer.cornerRadius = 55
        ci.layer.masksToBounds = true
        return ci
    }
    func makeAvoidImage() -> UIImageView {
        let ai = UIImageView()
        ai.image = UIImage(named: "avoid")
        ai.contentMode = .scaleAspectFit
        addSubview(ai)
        ai.translatesAutoresizingMaskIntoConstraints = false
        ai.widthAnchor.constraint(equalToConstant: 110).isActive = true
        ai.heightAnchor.constraint(equalToConstant: 110).isActive = true
        ai.topAnchor.constraint(equalTo: PreventionLabel.bottomAnchor, constant: 30).isActive = true
        ai.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        ai.layer.cornerRadius = 55
        ai.layer.masksToBounds = true
        return ai
    }
    func makeWearImage() -> UIImageView {
        let wi = UIImageView()
        wi.image = UIImage(named: "wear")
        wi.contentMode = .scaleAspectFit
        addSubview(wi)
        wi.translatesAutoresizingMaskIntoConstraints = false
        wi.widthAnchor.constraint(equalToConstant: 110).isActive = true
        wi.heightAnchor.constraint(equalToConstant: 110).isActive = true
        wi.topAnchor.constraint(equalTo: PreventionLabel.bottomAnchor, constant: 30).isActive = true
        wi.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        wi.layer.cornerRadius = 55
        wi.layer.masksToBounds = true
        return wi
    }
    func makeCleanTitle() -> UILabel {
        let ct = UILabel()
        ct.font = UIFont.boldSystemFont(ofSize: 15)
        ct.text = "Clean your hands often"
        ct.numberOfLines = 2
        ct.textAlignment = .center
        addSubview(ct)
        ct.translatesAutoresizingMaskIntoConstraints = false
        ct.topAnchor.constraint(equalTo: CleanImage.bottomAnchor, constant: 10).isActive = true
        ct.leadingAnchor.constraint(equalTo: CleanImage.leadingAnchor).isActive = true
        ct.trailingAnchor.constraint(equalTo: CleanImage.trailingAnchor).isActive = true
        return ct
    }
    func makeAvoidTitle() -> UILabel {
        let at = UILabel()
        at.font = UIFont.boldSystemFont(ofSize: 15)
        at.text = "Avoid close contact"
        at.numberOfLines = 2
        at.textAlignment = .center
        addSubview(at)
        at.translatesAutoresizingMaskIntoConstraints = false
        at.topAnchor.constraint(equalTo: AvoidImage.bottomAnchor, constant: 10).isActive = true
        at.leadingAnchor.constraint(equalTo: AvoidImage.leadingAnchor).isActive = true
        at.trailingAnchor.constraint(equalTo: AvoidImage.trailingAnchor).isActive = true
        return at
    }
    func makeWearTitle() -> UILabel {
        let wt = UILabel()
        wt.font = UIFont.boldSystemFont(ofSize: 15)
        wt.text = "Wear a facemask"
        wt.numberOfLines = 2
        wt.textAlignment = .center
        addSubview(wt)
        wt.translatesAutoresizingMaskIntoConstraints = false
        wt.topAnchor.constraint(equalTo: WearImage.bottomAnchor, constant: 10).isActive = true
        wt.leadingAnchor.constraint(equalTo: WearImage.leadingAnchor).isActive = true
        wt.trailingAnchor.constraint(equalTo: WearImage.trailingAnchor).isActive = true
        return wt
    }
    func makeGradient() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        let color1 = Colors.shared.myPurple.cgColor
        let color2 = UIColor.white.cgColor
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 1.0, y: 0.3)
        gradient.endPoint = CGPoint(x: 0.0, y: 2.0)
        gradient.cornerRadius = 25
        return gradient
    }
    func makeTestView() -> UIView {
        let tv = UIView()
        addSubview(tv)
        tv.backgroundColor = .white
        tv.layer.borderWidth = 2
        tv.layer.borderColor = Colors.shared.myPurple.cgColor
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.topAnchor.constraint(equalTo: CleanTitle.bottomAnchor, constant: 30).isActive = true
        tv.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        tv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        tv.heightAnchor.constraint(equalToConstant: 120).isActive = true
        tv.layer.cornerRadius = 25
        return tv
    }
    func makeMainTestLabel() -> UILabel {
        let mtl = UILabel()
        mtl.font = UIFont.boldSystemFont(ofSize: 17)
        mtl.text = "Do your own test!"
        mtl.textColor = .black
        TestView.addSubview(mtl)
        mtl.translatesAutoresizingMaskIntoConstraints = false
        mtl.topAnchor.constraint(equalTo: TestView.topAnchor, constant: 17).isActive = true
        mtl.leadingAnchor.constraint(equalTo: TestView.leadingAnchor, constant: 160).isActive = true
        return mtl
    }
    func makeSecondaryTestLabel() -> UILabel {
        let stl = UILabel()
        stl.font = UIFont.systemFont(ofSize: 15)
        stl.textColor = .black
        stl.text = "Follow the instruction to do your own text."
        stl.numberOfLines = 2
        TestView.addSubview(stl)
        stl.translatesAutoresizingMaskIntoConstraints = false
        stl.topAnchor.constraint(equalTo: MainTestLabel.bottomAnchor, constant: 13).isActive = true
        stl.trailingAnchor.constraint(equalTo: TestView.trailingAnchor, constant: -20).isActive = true
        stl.leadingAnchor.constraint(equalTo: MainTestLabel.leadingAnchor).isActive = true
        return stl
    }
    func makeToTestButton() -> UIButton {
        let btt = UIButton()
        let yourAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 15),
            .foregroundColor: UIColor.black.cgColor,
            .underlineStyle: NSUnderlineStyle.single.rawValue]
        let attributeString = NSMutableAttributedString(string: "Click to Test",
                                                        attributes: yourAttributes)
        btt.setAttributedTitle(attributeString, for: .normal)
        btt.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        TestView.addSubview(btt)
        btt.translatesAutoresizingMaskIntoConstraints = false
        btt.bottomAnchor.constraint(equalTo: TestView.bottomAnchor, constant: -5).isActive = true
        btt.leadingAnchor.constraint(equalTo: TestView.leadingAnchor, constant: 25).isActive = true
        return btt
    }
    func makeTestImageView() -> UIImageView {
        let itv = UIImageView()
        itv.contentMode = .scaleAspectFit
        itv.image = UIImage(named: "test2")
        TestView.addSubview(itv)
        itv.translatesAutoresizingMaskIntoConstraints = false
        itv.bottomAnchor.constraint(equalTo: ToTestButton.topAnchor).isActive = true
        itv.topAnchor.constraint(equalTo: TestView.topAnchor, constant: 7).isActive = true
        itv.centerXAnchor.constraint(equalTo: ToTestButton.centerXAnchor).isActive = true
        return itv
    }
    func makeC19Title() -> UILabel {
        let c19t = UILabel()
        c19t.text = "Covid-19"
        c19t.font = UIFont.boldSystemFont(ofSize: 30)
        c19t.textColor = .white
        MainView.addSubview(c19t)
        c19t.translatesAutoresizingMaskIntoConstraints = false
        c19t.leadingAnchor.constraint(equalTo: MainView.leadingAnchor, constant: 30).isActive = true
        c19t.topAnchor.constraint(equalTo: MainView.topAnchor, constant: 120).isActive = true
        return c19t
    }
    func makeAYFSLabel() -> UILabel {
        let ayfslabel = UILabel()
        ayfslabel.text = "Are you feeling sick?"
        ayfslabel.font = UIFont.boldSystemFont(ofSize: 20)
        ayfslabel.textColor = .white
        MainView.addSubview(ayfslabel)
        ayfslabel.translatesAutoresizingMaskIntoConstraints = false
        ayfslabel.leadingAnchor.constraint(equalTo: MainView.leadingAnchor, constant: 30).isActive = true
        ayfslabel.topAnchor.constraint(equalTo: C19Title.bottomAnchor, constant: 50).isActive = true
        return ayfslabel
    }
    func makeInstructionLabel() -> UILabel {
        let il = UILabel()
        il.text = "If you feel sick with any of covid-19 symptoms please call us immediately for help."
        il.font = UIFont.systemFont(ofSize: 15)
        il.textColor = Colors.shared.whiteWithAlphaComponent
        il.numberOfLines = 2
        MainView.addSubview(il)
        il.translatesAutoresizingMaskIntoConstraints = false
        il.leadingAnchor.constraint(equalTo: MainView.leadingAnchor, constant: 30).isActive = true
        il.trailingAnchor.constraint(equalTo: MainView.trailingAnchor, constant: -17).isActive = true
        il.topAnchor.constraint(equalTo: AYFSLabel.bottomAnchor, constant: 20).isActive = true
        return il
    }
    func makeCallButton() -> UIButton {
        let cb = UIButton()
        cb.backgroundColor = Colors.shared.myRed
        cb.layer.cornerRadius = 25
        MainView.addSubview(cb)
        cb.translatesAutoresizingMaskIntoConstraints = false
        cb.leadingAnchor.constraint(equalTo: MainView.leadingAnchor, constant: 30).isActive = true
        cb.trailingAnchor.constraint(equalTo: MainView.trailingAnchor, constant: -190).isActive = true
        cb.topAnchor.constraint(equalTo: InstructionLabel.bottomAnchor, constant: 20).isActive = true
        cb.bottomAnchor.constraint(equalTo: MainView.bottomAnchor, constant: -40).isActive = true
        cb.addTarget(self, action: #selector(makeCall), for: .touchUpInside)
        return cb
    }
    func makeCallLabel() -> UILabel {
        let cl = UILabel()
        cl.text  = "Call Now"
        cl.font = UIFont.boldSystemFont(ofSize: 20)
        cl.textColor = .white
        CallButton.addSubview(cl)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.trailingAnchor.constraint(equalTo: CallButton.trailingAnchor, constant: -30).isActive = true
        cl.centerYAnchor.constraint(equalTo: CallButton.centerYAnchor).isActive = true
        return cl
    }
    func makeCallImage() -> UIImageView {
        let ci = UIImageView()
        ci.image = UIImage(named: "call")
        ci.contentMode = .scaleAspectFit
        CallButton.addSubview(ci)
        ci.translatesAutoresizingMaskIntoConstraints = false
        ci.leadingAnchor.constraint(equalTo: CallLabel.leadingAnchor, constant:  -210).isActive = true
        ci.topAnchor.constraint(equalTo: CallButton.topAnchor, constant: 15).isActive = true
        ci.bottomAnchor.constraint(equalTo: CallButton.bottomAnchor, constant: -15).isActive = true
        return ci
    }
    func makeCountryView() -> UIView {
        let cv = UIView()
        cv.backgroundColor = .white
        MainView.addSubview(cv)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.centerYAnchor.constraint(equalTo: C19Title.centerYAnchor).isActive = true
        cv.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cv.layer.cornerRadius = 20
        cv.leadingAnchor.constraint(equalTo: C19Title.trailingAnchor, constant: 110).isActive = true
        cv.trailingAnchor.constraint(equalTo: MainView.trailingAnchor, constant: -40).isActive = true
        return cv
    }
    func makeCountryLabel() -> UILabel {
        let cl = UILabel()
        cl.text = "BLR"
        cl.font = UIFont.boldSystemFont(ofSize: 15)
        MainView.addSubview(cl)
        CountryView.addSubview(cl)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.centerXAnchor.constraint(equalTo: CountryView.centerXAnchor).isActive = true
        cl.centerYAnchor.constraint(equalTo: CountryView.centerYAnchor).isActive = true
        return cl
    }
    func makeFlagImage() -> UIImageView {
        let fi = UIImageView()
        fi.image = UIImage(named: "flag")
        fi.contentMode = .scaleAspectFit
        CountryView.addSubview(fi)
        fi.translatesAutoresizingMaskIntoConstraints = false
        fi.widthAnchor.constraint(equalToConstant: 24).isActive = true
        fi.heightAnchor.constraint(equalToConstant: 24).isActive = true
        fi.layer.cornerRadius = 12
        fi.centerYAnchor.constraint(equalTo: CountryView.centerYAnchor).isActive = true
        fi.leadingAnchor.constraint(equalTo: CountryView.leadingAnchor,constant: 8).isActive = true
        return fi
    }
    @objc func openLink() {
        guard let url = URL(string: "https://invitro.by/analizes/for-doctors/2083/") else {return }
        UIApplication.shared.open(url, options: [:]) { (done) in
        }
    }
    @objc func makeCall() {
        guard let number = URL(string: "tel://" + "4151231234") else { return }
        if UIApplication.shared.canOpenURL(number) {
            UIApplication.shared.open(number)
        }
    }
}

