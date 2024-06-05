//
//  speachApp.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//


import SwiftUI
import FirebaseCore
//
//
//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        
//        return true
//    }
//}
//
//
//@main
//struct ThreadsApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}


//import SwiftUI
//import FirebaseCore
//
//class AppDelegate: NSObject, UIApplicationDelegate{
//    func application(_ application: UIApplication, didFinishLaunchingNow launchoption: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        return true
//    }
//}
//
//@main
//struct speachApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    
//    var body: some Scene {
//        WindowGroup {
//            LoginView()
//        }
//    }
//}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct SpeachApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

