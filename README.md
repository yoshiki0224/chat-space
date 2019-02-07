# ChatSpace
チャットアプリケーション

# Chatspaseの機能
 ・新規登録機能（ログアウト）
 ・1対1のチャット機能
 ・複数人のグループチャット機能
 ・ユーザーの検索機能
 ・グループへの招待機能
 ・チャットの履歴表示機能
 ・画像送信機能
 ・チャットの自動更新

# 実装のフロー
 ・チャット画面のコーディング
 ・チャットを送信できるようにする
 ・ログイン機能
 ・チャットグループ作成
 ・チャットグループ作成時にメンバー検索
 ・チャットグループ作成時にメンバー追加
 ・チャット投稿の非同期化
 ・画像の送信機能
 ・チャットへの招待機能実装
 ・自動更新機能の実装

# DB設計

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|references|foreign_key|
|user_id|references|foreign_key|
#関連性
belongs_to:user belongs_to:group


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|NOT NULL,index|
|email|text|NOT NULL,index|
|password|string|NOT NULL|

#関連性
has_many :messages has_many :users_groups has_many :groups,through: :users_groups

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|NOT NULL|

#関連性
has_many :messages has_many :users_groups has_many :users, through: :users_groups

## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|NOT NULL,foreign_key|
|group_id|references|NOT NULL,foregin_key|

#関連性
belongs_to :user belongs_to :group

