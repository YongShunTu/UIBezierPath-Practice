//
//  ContentView.swift
//  UIBezierPath Practice
//
//  Created by 姜又寧 on 2021/11/19.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        //貓臉型
        func catFaceImage() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 57, y: 50))
            path.addLine(to: CGPoint(x: 88, y: 76))
            path.addQuadCurve(to: CGPoint(x: 131, y: 76), controlPoint: CGPoint(x: 109.5, y: 70))
            path.addLine(to: CGPoint(x: 131, y: 76))
            path.addLine(to: CGPoint(x: 164, y: 50))
            path.addLine(to: CGPoint(x: 164, y: 136))
            path.addQuadCurve(to: CGPoint(x: 57, y: 136), controlPoint: CGPoint(x: 110.5, y: 210))
            path.close()
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.lineWidth = 5
            layer.strokeColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
            layer.fillColor = UIColor.brown.cgColor
            
            return layer
        }
        
        //左耳
        func leftCatEar() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 66, y: 70))
            path.addLine(to: CGPoint(x: 80, y: 80))
            path.addQuadCurve(to: CGPoint(x: 66, y: 90), controlPoint: CGPoint(x: 73, y: 80))
            path.close()
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            return layer
        }
        
        //右耳
        func rightCatEar() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 155, y: 70))
            path.addLine(to: CGPoint(x: 141, y: 80))
            path.addQuadCurve(to: CGPoint(x: 155, y: 90), controlPoint: CGPoint(x: 148, y: 80))
            path.close()
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            return layer
        }
        
        //打開眼睛
        func openCatEyes() -> CAShapeLayer {
            let pi = CGFloat.pi / 180
            let path = UIBezierPath()
            path.addArc(withCenter: CGPoint(x: 85, y: 113), radius: 7, startAngle: pi * 0, endAngle: pi * 360, clockwise: true)
            path.addArc(withCenter: CGPoint(x: 135, y: 113), radius: 7, startAngle: pi * 0, endAngle: pi * 360, clockwise: true)
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            return layer
        }
        
        //製作動畫的眼淚
        func cryCat() -> CAShapeLayer {
            let pi = CGFloat.pi / 180
            let path = UIBezierPath()
            path.addArc(withCenter: CGPoint(x: 85, y: 113), radius: 3, startAngle: pi * 0, endAngle: pi * 360, clockwise: true)
            path.addArc(withCenter: CGPoint(x: 135, y: 113), radius: 3, startAngle: pi * 0, endAngle: pi * 360, clockwise: true)
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            return layer
        }
        
        //閉眼睛
        func closeCatEyes() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 78, y: 113))
            path.addLine(to: CGPoint(x: 92, y: 113))
            path.move(to: CGPoint(x: 128, y: 113))
            path.addLine(to: CGPoint(x: 142, y: 113))
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.lineWidth = 3
            layer.strokeColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
            return layer
        }
        
        //鼻子
        func catNose() -> CAShapeLayer {
            let pi = CGFloat.pi / 180
            let path = UIBezierPath(arcCenter: CGPoint(x: 110, y: 133), radius: 10, startAngle: pi * 0, endAngle: pi * 360, clockwise: true)
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            return layer
        }
        
        //鬍鬚
        func catBeard() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 65, y: 135))
            path.addLine(to: CGPoint(x: 95, y: 135))
            path.move(to: CGPoint(x: 70, y: 145))
            path.addLine(to: CGPoint(x: 90, y: 140))
            path.move(to: CGPoint(x: 78, y: 153))
            path.addLine(to: CGPoint(x: 96, y: 142))
            
            path.move(to: CGPoint(x: 125, y: 135))
            path.addLine(to: CGPoint(x: 155, y: 135))
            path.move(to: CGPoint(x: 130, y: 140))
            path.addLine(to: CGPoint(x: 150, y: 145))
            path.move(to: CGPoint(x: 122, y: 142))
            path.addLine(to: CGPoint(x: 144, y: 153))
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.lineWidth = 3
            layer.strokeColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
            return layer
        }
        
        //嘴巴
        func catMouth() -> CAShapeLayer {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 110, y: 143))
            path.addLine(to: CGPoint(x: 110, y: 153))
            path.move(to: CGPoint(x: 110, y: 153))
            path.addQuadCurve(to: CGPoint(x: 90, y: 160), controlPoint: CGPoint(x: 105, y: 159))
            path.move(to: CGPoint(x: 110, y: 153))
            path.addQuadCurve(to: CGPoint(x: 130, y: 160), controlPoint: CGPoint(x: 115, y: 159))
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.lineWidth = 3
            layer.strokeColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
            return layer
        }
         
        //顯示圖片
        view.layer.addSublayer(catFaceImage())
        view.layer.addSublayer(leftCatEar())
        view.layer.addSublayer(rightCatEar())
        view.layer.addSublayer(openCatEyes())
//        view.layer.addSublayer(closeCatEyes())
        view.layer.addSublayer(catNose())
        view.layer.addSublayer(catBeard())
        view.layer.addSublayer(catMouth())

        //動畫哭哭臉
        let cryView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        cryView.layer.addSublayer(cryCat())
        view.addSubview(cryView)

        UIView.animate(withDuration: 0.5, delay: 0, options: .repeat) {
            cryView.frame = CGRect(x: 0, y: 15, width: 20, height: 20)
        }

        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

