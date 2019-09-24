//
//  NetworkHelper.swift
//  Alamofire
//
//  Created by Eryk Mariankowski on 05.11.2018.
//
import UIKit
import Moya

public enum NetworkHelper {

    public static func attachmentToFormData(image: UIImage,
                                            title: String,
                                            description: String,
                                            group: String,
                                            fileName: String = "logo-square.jpg") -> [Moya.MultipartFormData] {
        let jpg = image.jpegData(compressionQuality: 0.8)!
        let title = MultipartFormData(provider: .data(title.data(using: .utf8)!), name: "tytul")
        let description = MultipartFormData(provider: .data(description.data(using: .utf8)!), name: "opis")
        let square = MultipartFormData(provider: .data(fileName.data(using: .utf8)!), name: "file_name")
        let grupaForm = MultipartFormData(provider: provider(group), name: "grupa")
        let jpgData = MultipartFormData(provider: .data(jpg), name: "plik", fileName: fileName, mimeType: "image/jpg")
        return [title, description, square, grupaForm, jpgData]
    }

    private static func provider(_ string: String) -> MultipartFormData.FormDataProvider {
        return .data(string.data(using: .utf8)!)
    }

    public static func formData(dict: [String: String]) -> Task {
        return .uploadMultipart(dict.map { (key: String, value: String) in
            MultipartFormData(provider: provider(value), name: key)
        })
    }

}
