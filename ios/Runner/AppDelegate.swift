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
    // The api.plist file must be kept secret.

    // Initialization Google Map for IOS
    GMSServices.provideAPIKey(googleApiKey)

    // Initialization Yandex Map for IOS
    YMKMapKit.setApiKey(yandexApiKey)

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

// The Google Api Key value is taken from the api.plist file.
private var googleApiKey: String {
  get {
    guard let filePath = Bundle.main.path(forResource: "api", ofType: "plist") else {
      fatalError("Couldn't find file 'api.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "googleApiKey") as? String else {
      fatalError("Couldn't find key 'API_KEY_GOOGLE' in 'api.plist'.")
    }
    return value
  }
}

// The Google Api Key value is taken from the api.plist file.
private var yandexApiKey: String {
  get {
    guard let filePath = Bundle.main.path(forResource: "api", ofType: "plist") else {
      fatalError("Couldn't find file 'api.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "yandexApiKey") as? String else {
      fatalError("Couldn't find key 'API_KEY_YANDEX' in 'api.plist'.")
    }
    return value
  }
}