# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i
  if (order_number > 0) && (order_number <= menus.size)
    order_number -= 1
    puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
    order_number
  else
    puts "メニュー番号が正しくありません"
  end
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
order2 = take_order(FOODS)

if order1.nil? || order2.nil?
  puts "もう一度お伺いしてもよろしいでしょうか。"
else
  total = FOODS[order2][:price].to_i + DRINKS[order1][:price].to_i
  puts "お会計は#{total}円になります。ありがとうございました！"
end
