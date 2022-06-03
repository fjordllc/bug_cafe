# frozen_string_literal: true
require "debug"
DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze #freezeを使用することで定数の変更を防ぐ

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円" #DRINKS , FOODS の menu表示
  end
  print '>'
  order_number = gets.to_i
  order_number -= 1 #配列の振り分けが0からなので入力した数字に -1 をして取得するデータと表示されているデータ番号を調整
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  order_number
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS) #take_orderに最初はDRINKSの配列を引数にして呼び出す
order1
puts 'フードメニューはいかがですか?' 
order2 = take_order(FOODS) #FOODSの配列を引数にして呼び出す
order2 
total = DRINKS[order1][:price].to_i + FOODS[order2][:price].to_i 
#Integreに変更することで足し算を可能にする #DRINKSとFOODSのorderの関係性が逆になっていたのを修正
puts "お会計は#{total}円になります。ありがとうございました！"
