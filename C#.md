## Contravariance

```csharp
// Contravariance.           
// Assume that I have this method: 
// static void SetObject(object o) { } 
Action<object> actObject = SetObject;
// An object that is instantiated with a less derived type argument 
// is assigned to an object instantiated with a more derived type argument. 
// Assignment compatibility is reversed. 
Action<string> actString = actObject;
```

http://blogs.msdn.com/b/csharpfaq/archive/2010/02/16/covariance-and-contravariance-faq.aspx
