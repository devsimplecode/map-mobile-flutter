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
    if let path = Bundle.main.path(forResource: "map-keys", ofType: "plist") {
       let nsDictionary = NSDictionary(contentsOfFile: path)

       if let googleApiKey = nsDictionary?["GOOGLE_API_KEY"] as? String {
           print("AppDelegate: GOOGLE_API_KEY found")
           GMSServices.provideAPIKey(googleApiKey)
       }
       if let yandexApiKey = nsDictionary?["YANDEX_API_KEY"] as? String {
           print("AppDelegate: YANDEX_API_KEY found")
           YMKMapKit.setApiKey(yandexApiKey)
       }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
