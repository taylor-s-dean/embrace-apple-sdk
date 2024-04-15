//
//  Copyright © 2023 Embrace Mobile, Inc. All rights reserved.
//

import Foundation
import EmbraceObjCUtils
import EmbraceConfig
import EmbraceCommon

extension Embrace {
    static func createConfig(options: Embrace.Options, deviceId: String) -> EmbraceConfig {
        let configOptions = EmbraceConfig.Options(
            apiBaseUrl: options.endpoints.configBaseURL,
            queue: DispatchQueue(label: "com.embrace.config"),
            appId: options.appId,
            deviceId: deviceId,
            osVersion: EMBDevice.appVersion ?? "",
            sdkVersion: EmbraceMeta.sdkVersion,
            appVersion: EMBDevice.operatingSystemVersion,
            userAgent: EmbraceMeta.userAgent
        )

        return EmbraceConfig(options: configOptions)
    }
}
