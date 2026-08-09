# pacman用Termuxパッケージ – 公式Gitリポジトリミラー

<!-- hy-mt2-i18n:start -->
[English](./README.md) | [中文](./README_zh-CN.md) | **日本語** | [Español](./README_es.md)
<!-- hy-mt2-i18n:end -->

![GitHubリポジトリのサイズ](https://img.shields.io/github/repo-size/termux-pacman/termux-packages)
![パッケージの最新ビルド状況](https://github.com/termux-pacman/termux-packages/workflows/Packages/badge.svg)
![リポジトリの最新更新状況](https://github.com/termux-pacman/termux-packages/workflows/Update%20repo/badge.svg)  
[リポジトリについての詳細](https://github.com/termux/termux-packages/blob/master/README.md)

### リポジトリに接続するためのコード:
main:
```
[main]
Server = https://service.termux-pacman.dev/main/$arch
```
x11:
```
[x11]
Server = https://service.termux-pacman.dev/x11/$arch
```
root:
```
[root]
Server = https://service.termux-pacman.dev/root/$arch
```

### その他の情報:
 - Android対応: 7+
 - アーキテクチャ対応: すべて (aarch64, arm, x86_64, i686)
 - 署名: termux-pacman組織のgpgキー
 - awsによって運用されている
 - ルートリポジトリ: https://github.com/termux/termux-packages
 - ルートリポジトリを管理している組織: [termux](https://github.com/termux)
