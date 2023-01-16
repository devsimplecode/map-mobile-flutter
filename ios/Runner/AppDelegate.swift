import UIKit
import Flutter
import GoogleMaps
import YandexMapsMobile

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    GMSServices.provideAPIKey(googleApiKey)
    YMKMapKit.setApiKey(yandexApiKey)

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


private var googleApiKey: String {
  get {
    // 1
    guard let filePath = Bundle.main.path(forResource: "api", ofType: "plist") else {
      fatalError("Couldn't find file 'api.plist'.")
    }
    // 2
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "googleApiKey") as? String else {
      fatalError("Couldn't find key 'API_KEY_GOOGLE' in 'api.plist'.")
    }
    return value
  }
}

private var yandexApiKey: String {
  get {
    // 1
    guard let filePath = Bundle.main.path(forResource: "api", ofType: "plist") else {
      fatalError("Couldn't find file 'api.plist'.")
    }
    // 2
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "yandexApiKey") as? String else {
      fatalError("Couldn't find key 'API_KEY_YANDEX' in 'api.plist'.")
    }
    return value
  }
}