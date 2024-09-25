import FBSDKCoreKit
import Flutter
import UIKit

public class DsPurchasePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ds_purchase", binaryMessenger: registrar.messenger())
    let instance = DsPurchasePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "getFbGUID":
        result(AppEvents.shared.anonymousID as String?)

    case "sendFbPurchase":
        guard
            let args = call.arguments as? [String: Any],
            let fbOrderId = args["fbOrderId"] as? String,
            let fbCurrency = args["fbCurrency"] as? String,
            let valueToSum = args["valueToSum"] as? Double,
            let isTrial = args["isTrial"] as? Bool else {
                result(FlutterError(code: "FB_PURCHASE_INVALID_ARGUMENT", message: "Invalid argument in sendFbPurchase. Contact with ds_purchase author", details: nil))
                return
        }
        sendFbPurchase(fbOrderId: fbOrderId, fbCurrency: fbCurrency, valueToSum: valueToSum, isTrial: isTrial)
        result(nil)

    default:
      result(FlutterMethodNotImplemented)
    }
  }
    
  private func sendFbPurchase(fbOrderId: String, fbCurrency: String, valueToSum: Double, isTrial: Bool) {
      let params: [AppEvents.ParameterName: Any] = [
            AppEvents.ParameterName.init("fb_content_id"): fbOrderId,
            AppEvents.ParameterName.init("fb_content_type"): "product",
            AppEvents.ParameterName.init("fb_currency"): fbCurrency,
            AppEvents.ParameterName.init("fb_num_items"): 1,
        ]

        let params2: [AppEvents.ParameterName: Any] = [
            AppEvents.ParameterName.init("fb_order_id"): fbOrderId,
            AppEvents.ParameterName.init("fb_currency"): fbCurrency,
        ]

        let event = AppEvents.Name.init(rawValue: "fb_mobile_purchase")
        let event2 = AppEvents.Name.init(rawValue: isTrial ? "StartTrial" : "Subscribe")
        AppEvents.shared.logEvent(event, valueToSum: valueToSum, parameters: params)
        AppEvents.shared.logEvent(event2, valueToSum: valueToSum, parameters: params2)
        AppEvents.shared.flush()
   }
}
