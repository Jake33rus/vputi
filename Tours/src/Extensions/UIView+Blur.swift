//
//  UIView+Blur.swift
//  Tours
//
//  Created by Евгений Уланов on 09.05.2022.
//

import UIKit

private let tagBlur = 3943898

public extension UIView {
    func blurApply(radius: Float, brightness: Float = 0.0) {
        blurCancel()
        let blurView: UIImageView = {
            let item = UIImageView(frame: .zero)
            item.image = image()?.applyBlur(radius: radius)?.imageWithBrightness(brightness)
            item.tag = tagBlur
            return item
        }()
        addSubview(blurView.prepareForAutoLayout())
        blurView.pinEdgesToSuperviewEdges()
    }

    func darkenApply(value: Float) {
        blurCancel()
        let blurView: UIImageView = {
            let item = UIImageView(frame: .zero)
            item.image = image()?.applyDark(value: value)
            item.tag = tagBlur
            return item
        }()
        addSubview(blurView.prepareForAutoLayout())
        blurView.pinEdgesToSuperviewEdges()
    }
}

public extension UIView {
    func blurCancel() {
        viewWithTag(tagBlur)?.removeFromSuperview()
    }
}

public extension UIImage {
    func imageWithBrightness(_ brightness: Float) -> UIImage? {
        guard let cgImage = self.cgImage else { return nil }

        let ciImage = CIImage(cgImage: cgImage)
        let context = CIContext(options: nil)

        guard let brightnessFilter = CIFilter(name: "CIColorControls") else { return nil }

        brightnessFilter.setValue(ciImage, forKey: kCIInputImageKey)
        brightnessFilter.setValue(brightness, forKey: kCIInputBrightnessKey)

        guard let filteredImage = brightnessFilter.outputImage,
              let filteredCGImage = context.createCGImage(filteredImage, from: filteredImage.extent) else { return nil }

        return UIImage(cgImage: filteredCGImage)
    }
}

private extension UIView {
    func image() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, true, 0.0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        guard let uiImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        guard let cgImage = uiImage.cgImage else { return nil }
        return UIImage(cgImage: cgImage)
    }
}

private extension UIImage {
    func applyBlur(radius: Float) -> UIImage? {
        let ciContext = CIContext(options: nil)
        guard let inputImage = CIImage(image: self) else { return nil }
        guard let mask = CIFilter(name: "CIGaussianBlur") else { return nil }
        mask.setValue(inputImage, forKey: kCIInputImageKey)
        mask.setValue(radius, forKey: kCIInputRadiusKey)
        guard let output = mask.outputImage else { return nil }
        guard let cgImage = ciContext.createCGImage(output, from: inputImage.extent) else { return nil }
        return UIImage(cgImage: cgImage)
    }

    func applyDark(value: Float) -> UIImage? {
        let ciContext = CIContext(options: nil)
        guard let inputImage = CIImage(image: self) else { return nil }
        guard let mask = CIFilter(name: "CIExposureAdjust") else { return nil }
        mask.setValue(inputImage, forKey: kCIInputImageKey)
        mask.setValue(value, forKey: kCIInputEVKey)
        guard let output = mask.outputImage else { return nil }
        guard let cgImage = ciContext.createCGImage(output, from: inputImage.extent) else { return nil }
        return UIImage(cgImage: cgImage)
    }
}


