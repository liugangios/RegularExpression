### 简介
RegularExpression是一个方便的`NSString`的分类，用于字符串的校验，可以自己手动添加自定义方法。让使用正则表达式只要一个`.`
### 使用
1、手动添加`NSString+Regex`分类
2、在控制器中导入分类
`#import "NSString+Regex.h"`
3、调用`NSString`的对象方法验证，返回BOOL值
```objectivec
NSString *str = @"ustbliugang@163.com";
NSLog(@"%i",str.isEmailAddress);
```
