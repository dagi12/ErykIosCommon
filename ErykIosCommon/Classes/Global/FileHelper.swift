//
//  FileHelper.swift
//  ErykIosCommon
//
//  Created by Eryk Mariankowski on 26.03.2019.
//

import Foundation

public enum FileHelper {

    public static func removeIfExists(file: String) {
        DispatchQueue.main.async {
            let filePath = FileHelper.path(for: file)
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                do {
                    try fileManager.removeItem(atPath: filePath)
                } catch let error {
                    log.error(error)
                }
            }
        }
    }

    public static func path(for file: String) -> String {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return dir.appendingPathComponent(file).path
    }

}
