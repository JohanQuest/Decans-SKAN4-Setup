import AppsFlyerLib

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    AppsFlyerLib.shared().appsFlyerDevKey = "YOUR_DEV_KEY"
    AppsFlyerLib.shared().appleAppID = "YOUR_APPLE_APP_ID"
    AppsFlyerLib.shared().isDebug = true // Disable in production
    return true
}

// Small coin pack purchase
AppsFlyerLib.shared().logEvent("Coins_Small_Purchase", withValues: ["af_revenue": amount, "af_currency": "USD"])

// Large coin pack purchase
AppsFlyerLib.shared().logEvent("Coins_Large_Purchase", withValues: ["af_revenue": amount, "af_currency": "USD"])

// Bronze subscription started
AppsFlyerLib.shared().logEvent("Subscription_Bronze_Start", withValues: ["af_revenue": amount, "af_currency": "USD"])

// Gold subscription started
AppsFlyerLib.shared().logEvent("Subscription_Gold_Start", withValues: ["af_revenue": amount, "af_currency": "USD"])

// Platinum subscription started
AppsFlyerLib.shared().logEvent("Subscription_Platinum_Start", withValues: ["af_revenue": amount, "af_currency": "USD"])

AppsFlyerLib.shared().logEvent("Astrocoins_Spent", withValues: ["af_amount": coinsSpent])

AppsFlyerLib.shared().logEvent("Horoscope_View", withValues: nil)
AppsFlyerLib.shared().logEvent("Compatibility_View", withValues: nil)
AppsFlyerLib.shared().logEvent("Tarot_Start", withValues: nil)
AppsFlyerLib.shared().logEvent("Astrologer_AI_Interaction", withValues: nil)
AppsFlyerLib.shared().logEvent("Numerology_View", withValues: nil)

// Session Duration
AppsFlyerLib.shared().logEvent("Session_Duration", withValues: ["af_duration": sessionDuration, "user_type": userType])

// Notification Opened
AppsFlyerLib.shared().logEvent("Notification_Opened", withValues: nil)

// Notification Clicked
AppsFlyerLib.shared().logEvent("Notification_Clicked", withValues: nil)

// Ad View (Freemium Users Only)
if userType == "Freemium" {
    AppsFlyerLib.shared().logEvent("Ad_View", withValues: nil)
}

// Ad Click (Freemium Users Only)
if userType == "Freemium" {
    AppsFlyerLib.shared().logEvent("Ad_Click", withValues: nil)
}

// Bronze subscription renewal
AppsFlyerLib.shared().logEvent("Subscription_Bronze_Renew", withValues: ["af_revenue": amount, "af_currency": "USD"])

// Subscription cancellation
AppsFlyerLib.shared().logEvent("Subscription_Cancel", withValues: nil)
