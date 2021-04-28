//
//  ViewExtension.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/8/20.
//
import UIKit
extension COVIDInfoView {
    func makeSegmentedControl() -> UISegmentedControl {
        let sc = UISegmentedControl()
        sc.insertSegment(withTitle: "Global", at: 0, animated: true)
        sc.insertSegment(withTitle: "My Country", at: 1, animated: true)
        sc.selectedSegmentTintColor = .white
        sc.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        sc.selectedSegmentIndex = 0
        addSubview(sc)
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.heightAnchor.constraint(equalToConstant: 50).isActive = true
        sc.topAnchor.constraint(equalTo: topAnchor, constant: 170).isActive = true
        sc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        sc.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        return sc
    }
    func makeTodayButton() -> UIButton {
        let tb = UIButton()
        tb.setTitle("Today", for: .normal)
        tb.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        return tb
    }
    func makeTotalButton() -> UIButton {
        let tb = UIButton()
        tb.setTitle("Total", for: .normal)
        tb.setTitleColor(Colors.shared.whiteWithAlphaComponent, for: .normal)
        tb.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        return tb
    }
    func makeStackForButtons() -> UIStackView {
        let stack = UIStackView(arrangedSubviews: [TodayButton, TotalButton])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: SegmentedControl.bottomAnchor, constant: 20).isActive = true
        stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60).isActive = true
        stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        return stack
    }
    func makeAffectedView() -> UIView {
        let av = UIView()
        av.backgroundColor = Colors.shared.myYellow
        addSubview(av)
        av.translatesAutoresizingMaskIntoConstraints = false
        av.topAnchor.constraint(equalTo: Stack.bottomAnchor, constant: 20).isActive = true
        av.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        av.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        av.heightAnchor.constraint(equalToConstant: 110).isActive = true
        av.layer.cornerRadius = 10
        return av
    }
    func makeRecoveredView() -> UIView {
        let rv = UIView()
        rv.backgroundColor = Colors.shared.myGreen
        addSubview(rv)
        rv.translatesAutoresizingMaskIntoConstraints = false
        rv.topAnchor.constraint(equalTo: AffectedView.bottomAnchor, constant: 10).isActive = true
        rv.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        rv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -190).isActive = true
        rv.heightAnchor.constraint(equalToConstant: 110).isActive = true
        rv.layer.cornerRadius = 10
        return rv
    }
    func makeDeathView() -> UIView {
        let dv = UIView()
        dv.backgroundColor = Colors.shared.myRed
        addSubview(dv)
        dv.translatesAutoresizingMaskIntoConstraints = false
        dv.topAnchor.constraint(equalTo: AffectedView.bottomAnchor, constant: 10).isActive = true
        dv.leadingAnchor.constraint(equalTo: RecoveredView.trailingAnchor, constant: 10).isActive = true
        dv.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        dv.heightAnchor.constraint(equalToConstant: 110).isActive = true
        dv.layer.cornerRadius = 10
        return dv
    }
    func makeAffectedLabel() -> UILabel {
        let al = UILabel()
        al.text = "Affected"
        al.textColor = .white
        al.font = UIFont.boldSystemFont(ofSize: 20)
        AffectedView.addSubview(al)
        al.translatesAutoresizingMaskIntoConstraints = false
        al.topAnchor.constraint(equalTo: AffectedView.topAnchor, constant: 15).isActive = true
        al.leadingAnchor.constraint(equalTo: AffectedView.leadingAnchor, constant: 15).isActive = true
        return al
    }
    func makeRecoveredLabel() -> UILabel {
        let rl = UILabel()
        rl.text = "Recovered"
        rl.textColor = .white
        rl.font = UIFont.boldSystemFont(ofSize: 20)
        RecoveredView.addSubview(rl)
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.topAnchor.constraint(equalTo: RecoveredView.topAnchor, constant: 15).isActive = true
        rl.leadingAnchor.constraint(equalTo: RecoveredView.leadingAnchor, constant: 15).isActive = true
        return rl
    }
    func makeDeathLabel() -> UILabel {
        let dl = UILabel()
        dl.text = "Death"
        dl.textColor = .white
        dl.font = UIFont.boldSystemFont(ofSize: 20)
        DeathView.addSubview(dl)
        dl.translatesAutoresizingMaskIntoConstraints = false
        dl.topAnchor.constraint(equalTo: DeathView.topAnchor, constant: 15).isActive = true
        dl.leadingAnchor.constraint(equalTo: DeathView.leadingAnchor, constant: 15).isActive = true
        return dl
    }
    func makeAffectedAmountLabel() -> UILabel {
        let al = UILabel()
        al.text = "1,354,735"
        al.textColor = .white
        al.font = UIFont.boldSystemFont(ofSize: 30)
        AffectedView.addSubview(al)
        al.translatesAutoresizingMaskIntoConstraints = false
        al.bottomAnchor.constraint(equalTo: AffectedView.bottomAnchor, constant: -15).isActive = true
        al.leadingAnchor.constraint(equalTo: AffectedView.leadingAnchor, constant: 15).isActive = true
        return al
    }
    func makeRecoveredAmountLabel() -> UILabel {
        let rl = UILabel()
        rl.text = "603,332"
        rl.textColor = .white
        rl.font = UIFont.boldSystemFont(ofSize: 30)
        RecoveredView.addSubview(rl)
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.bottomAnchor.constraint(equalTo: RecoveredView.bottomAnchor, constant: -15).isActive = true
        rl.leadingAnchor.constraint(equalTo: RecoveredView.leadingAnchor, constant: 15).isActive = true
        return rl
    }
    func makeDeathAmountLabel() -> UILabel {
        let dl = UILabel()
        dl.text = "231,456"
        dl.textColor = .white
        dl.font = UIFont.boldSystemFont(ofSize: 30)
        DeathView.addSubview(dl)
        dl.translatesAutoresizingMaskIntoConstraints = false
        dl.bottomAnchor.constraint(equalTo: DeathView.bottomAnchor, constant: -15).isActive = true
        dl.leadingAnchor.constraint(equalTo: DeathView.leadingAnchor, constant: 15).isActive = true
        return dl
    }
    func makeSecondView() -> UIView {
        let sv = UIView()
        sv.backgroundColor = .white
        addSubview(sv)
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        sv.topAnchor.constraint(equalTo: RecoveredView.bottomAnchor, constant: 40).isActive = true
        sv.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        sv.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        sv.layer.cornerRadius = 40
        return sv
    }
    func makeCharts() {
        let size = [120, 110, 90, 130, 130, 140, 140]
        let date = DateCounter().count()
        (0...6).forEach({(i) in
            let barView = UIView()
            let leading = i + 1
            barView.backgroundColor = Colors.shared.myRed
            barView.layer.cornerRadius = 4
            barView.heightAnchor.constraint(equalToConstant: CGFloat(size[i])).isActive = true
            addSubview(barView)
            barView.translatesAutoresizingMaskIntoConstraints = false
            barView.leadingAnchor.constraint(equalTo: SecondView.leadingAnchor, constant: CGFloat(50 * leading)).isActive = true
            barView.widthAnchor.constraint(equalToConstant: 7).isActive = true
            barView.heightAnchor.constraint(equalToConstant: CGFloat(size[i])).isActive = true
            barView.bottomAnchor.constraint(equalTo: SecondView.bottomAnchor, constant: -120).isActive = true
            let label = UILabel()
            label.text = date[i]
            label.font = UIFont.systemFont(ofSize: 10)
            label.textAlignment = .center
            label.textColor = .gray
            addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.leadingAnchor.constraint(equalTo: SecondView.leadingAnchor, constant: CGFloat(50 * leading)).isActive = true
            label.bottomAnchor.constraint(equalTo: SecondView.bottomAnchor, constant: -100).isActive = true
        })
    }
    func makeDNCLabel() -> UILabel {
        let dl = UILabel()
        dl.text = "Daily New Cases"
        dl.font = UIFont.boldSystemFont(ofSize: 20)
        SecondView.addSubview(dl)
        dl.translatesAutoresizingMaskIntoConstraints = false
        dl.topAnchor.constraint(equalTo: SecondView.topAnchor, constant: 30).isActive = true
        dl.leadingAnchor.constraint(equalTo: SecondView.leadingAnchor, constant: 25).isActive = true
        return dl
    }
    func makeStatisticsLabel() -> UILabel {
        let sl = UILabel()
        sl.text = "Statistics"
        sl.font = UIFont.boldSystemFont(ofSize: 30)
        sl.textColor = .white
        addSubview(sl)
        sl.translatesAutoresizingMaskIntoConstraints = false
        sl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        sl.topAnchor.constraint(equalTo: topAnchor, constant: 120).isActive = true
        return sl
    }
}
