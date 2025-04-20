---
description: 本プロジェクト全体に常に適用されるルール
globs: /*,/.*
alwaysApply: true
---

# 本プロジェクト全体に常に適用されるルール

## 原則

まず、このファイルを参照したら「✅ 基本ルールを確認しました」と返答します。

## 共通ルール

回答は常に日本語で行ってください。
このプロジェクトは主に Flutter, Dart が利用されています。
このプロジェクトでは Flutter SDK および Dart SDK は FVM を利用しています。flutter や dart のコマンドを実行する際は fvm flutter や fvm dart を使用してください。
この「共通ルール」を確認したら「✅ 基本ルール > 共通ルールを確認しました」と返答します。

## コメント及びドキュメンテーション

口調は「だ・である」調で統一します。
あえて体言止めにするもの等以外は、日本語として正しい文として成立する文章を書きます。通常のコメントも doc comment も例外はありません。
すべてのコメント及びドキュメンテーションは、例外なく、必ず「。」や「.」で終わります。
doc comment については、[Effective Dart: Documentation](mdc:https:/dart.dev/effective-dart/documentation) のルールに従って、日本語で書きます。
インラインのコメントも充実させますが、ある処理の行に続けて書くタイプのコメントは書かないでください。その処理の前の行に書きます。
この「コメント及びドキュメンテーション」を確認したら「✅ 基本ルール > コメント及びドキュメンテーションを確認しました」と返答します。

## コミットメッセージについて

コミットメッセージについては原則、プレフィックスをつけてください。
Must be one of the following:
feat: A new feature
fix: A bug fix
docs: Documentation only changes
style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
refactor: A code change that neither fixes a bug nor adds a feature
perf: A code change that improves performance
test: Adding missing or correcting existing tests
chore: Changes to the build process or auxiliary tools and libraries such as documentation generation
