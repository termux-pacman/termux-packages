# 用于 pacman 的 Termux 包——官方 Git 仓库镜像

<!-- hy-mt2-i18n:start -->
[English](./README.md) | **中文** | [日本語](./README_ja.md) | [Español](./README_es.md)
<!-- hy-mt2-i18n:end -->

![GitHub 仓库大小](https://img.shields.io/github/repo-size/termux-pacman/termux-packages)
![包的最新构建状态](https://github.com/termux-pacman/termux-packages/workflows/Packages/badge.svg)
![仓库的最新更新状态](https://github.com/termux-pacman/termux-packages/workflows/Update%20repo/badge.svg)  
[了解更多关于该仓库的信息](https://github.com/termux/termux-packages/blob/master/README.md)

### 连接仓库的配置代码：
main：
```
[main]
Server = https://service.termux-pacman.dev/main/$arch
```
x11：
```
[x11]
Server = https://service.termux-pacman.dev/x11/$arch
```
root：
```
[root]
Server = https://service.termux-pacman.dev/root/$arch
```

### 其他信息：
 - Android 支持版本：7 及以上
 - 架构支持：全部（aarch64、arm、x86_64、i686）
 - 签名：termux-pacman 组织的 GPG 密钥
 - 后端支持：aws
 - 根仓库地址：https://github.com/termux/termux-packages
 - 维护根仓库的组织：[termux](https://github.com/termux)
