# View hierarchy depending on code 👎

NEVER write this:

```swift
let n: Int! = self.navigationController?.viewControllers.count
let myUIViewController = self.navigationController?.viewControllers[n-2]
if (myUIViewController?.isKindOfClass(OverviewSavedRoutesViewController) == true){
  self.routeActionsView.hidden = false
  self.saveRouteButton.hidden = true
}
```

Your view hierarchy is now depending on code, which makes this hard to support/debug in the future.
Only the previous controller should define what de next one does.
