## 1.0.6
- allow ds_common 1.0.4 dependency to use old AppMetrica lib
- deprecated field rcKey removed

## 1.0.5
- fix adjust attribution for Adjust 5.0 for campaign

## 1.0.4
- fix adjust attribution for Adjust 5.0
- update ds-libs dependencies

## 1.0.3
- fix Adapty initialization
- minimum Flutter version is 3.24

## 1.0.2
- fix namespace

## 1.0.1
- fix Flutter 3.24 release build

## 1.0.0
- update dependencies

## 0.0.16
- fix duplicated Facebook events (bug in 0.0.15)

## 0.0.15
- send Facebook events (`fb_mobile_purchase`, `StartTrial` and `Subscribe`) after successful subscription

## 0.0.14
- add is_premium DSMetrica attribute to every event in application

## 0.0.13
- send tracker_clickid attribute to Adapty

## 0.0.12
- increase AppMetrica and Adjust profile update timeouts for Adapty

## 0.0.11
- update ds_common for Adapty v. 5 support

## 0.0.10
- add localized price to product and replace tags func
- fix OneSignal isPremium tag

## 0.0.9
- fix Adapty profile setup
- paywall_complete_buy event moved to manager call (breaking change: product_index attribute removed)
- update ds_common dependency

## 0.0.8
- iOS: fix Adapty profile setup facebook error ("No implementation found for method getFbGUID on channel ds_purchase")

## 0.0.7
- fix toAppProduct() and toAppPeriod() methods visibility

## 0.0.6
- enhance Adapty attribution (add different sources)
- add rcKey for purchases type (deprecated)

## 0.0.5
- ds_ads dependency updated

## 0.0.4
- add ds paywall and product entities, get DSPaywall and buy with DSProduct

## 0.0.3
- BREAKING CHANGE: fix locale initialization

## 0.0.2
- add paywalls cache support

## 0.0.1
- sOwl implementation copy