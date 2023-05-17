//
//  ScaleImageExtension.swift
//  TradeApp
//
//  Created by Raiden Yamato on 15.05.2023.
//

import UIKit


func scaleImage(image: UIImage, targetSize: CGSize) -> UIImage {
    var scaledImage = image
    let targetSize = targetSize

    let widthScaleRatio = targetSize.width / scaledImage.size.width
    let heightScaleRatio = targetSize.height / scaledImage.size.height

    let scaleFactor = min(widthScaleRatio, heightScaleRatio)

    let scaledImageSize = CGSize(
        width: scaledImage.size.width * scaleFactor,
        height: scaledImage.size.height * scaleFactor
    )
    
    let renderer = UIGraphicsImageRenderer(size: scaledImageSize)
    scaledImage = renderer.image { _ in
        image.draw(in: CGRect(origin: .zero, size: scaledImageSize))
    }
    
    return scaledImage
}
