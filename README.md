# DoFlutter

> A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## 学习链接

[Flutter官网](https://flutter.dev/community/china)<br/>
[《Flutter实战》电子书](https://book.flutterchina.club/#%E7%BC%98%E8%B5%B7)<br/>
[Flutter-Github](https://github.com/flutterchina/flutter-in-action)<br/>
[Flutter专栏](https://juejin.cn/tag/Flutter?utm_source=flutterchina&utm_medium=word&utm_content=btn&utm_campaign=q3_website)<br/>
[Flutter中文网](https://flutterchina.club/setup-macos/)<br/>
[Home brew安装](https://www.jianshu.com/p/e0471aa6672d?utm_campaign=hugo)<br/>

## 环境变量配置

`~/.bash_profile` 或者 `~/.zshrc` 配置内容(Mac新的都是用的zsh，所以配置的是`zshrc`)：

打开zshrc
`open ~/.zshrc` 

若是该文件不存在，就创建一个该名称的文件
`touch ~/.zshrc`

然后再执行
`open ~/.zshrc`

复制以下环境变量进去，将对应各自电脑的路径改掉
```
export ANDROID_SDK_ROOT=/Users/deepindu/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/deepindu/.android/avd
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=/Users/deepindu/development/flutter/bin:$PATH #flutter中bin目录
export ANDROID_HOME="/Users/deepindu/Library/Android/sdk" #android sdk目录，替换为你自己的即可
export PATH=${PATH}:${ANDROID_HOME}/emulator #android模拟器路径
export PATH=${PATH}:${ANDROID_HOME}/tools #android tools路径
export PATH=${PATH}:${ANDROID_HOME}/platform-tools #android 平台工具
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home
```

改完上面的内容，必须执行下面的才生效
```
source ~/.zshrc
```

## Q&A

Q: 1.若是安装了iterm2, 之后再使用flutter的命令，会提示zsh: command not found: flutter<br/>
A: 这是因为切换了shell执行工具， 进入cd ~目录, 然后cp -R .bash_profile .zprofile, 复制一份.bash_profile，然后改名为.zprofile，终端执行source ~./zprofile，<br/>

Q: 2.source ~/.bash_profile
     /Users/deepindu/.bash_profile:export:8: not valid in this context: //android模拟器路径<br/>
A: 原因bash_profile中有空格，比如=左右，或者写的注释用的//，用#号就不会了<br/>
