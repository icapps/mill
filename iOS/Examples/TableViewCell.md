# A UITableViewCell cannot know anything about the UITableView 👍
A UITableViewCell cannot know anything about it’s parent UITableView.

```objective-c
+ (CGFloat)heightForType:(PRAccountType)type
{
	if (type == kCashAccount) {
		return 174;
	} else if (type == kPhone) {
		return 196;
	} else if (type == kEmail) {
		return 174;
	} else if (type == kPhone) {
		return 215;
	}
	return 142;
}
```
/PRAccountType should be an enum and we should use a switch-case here, but we can’t have it all ¯\_(ツ)_/¯/
