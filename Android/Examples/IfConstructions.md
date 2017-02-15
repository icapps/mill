# Writing if constructions 👎

A boolean is already a statement, multiple ifs should be combined if they have the same implementation.
Keep your structure flat, don't put everything in an "else" block
Also, please use proper sentences/grammar. Code collected from an official Samsung sample app.
Be consistent in naming conventions: "onReadyIdentify" and "mOnReadyEnroll" is not ok.

```java
private void registerFingerprint() {
  if (onReadyIdentify == false) {
      if (mOnReadyEnroll == false) {
          log("Registered fingerprint is not existed.");
      } else {
          //do stuff
      }
  }
}
```

# Writing if constructions 👍
Check a statement and if this should end the method, return. Don't put the rest in an "else" block.

```java
private void registerFingerprint() {
    if (!mOnReadyIdentify || !mOnReadyEnroll) {
        log("Registered fingerprint does not exist.");
        return;
    }
    //do stuff
}
```
