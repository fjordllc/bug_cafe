# frozen_string_literal: true
DRINKS = [
  { name: 'コーヒー', price: 300 },
  { name: 'カフェラテ', price: 400 },
  { name: 'チャイ', price: 460 },
  { name: 'エスプレッソ', price: 340 },
  { name: '緑茶', price: 450 }
].freeze
FOODS = [
  { name: 'チーズケーキ', price: 470 },
  { name: 'アップルパイ', price: 520 },
  { name: 'ホットサンド', price: 410 }
].freeze

def take_order(menus)
  numbered_menus = menus.each.with_index(1).to_h { |menu, i| [i, menu] }
  numbered_menus.each do |i, menu|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i
  menu = numbered_menus[order_number]
  puts "#{menu[:name]}(#{menu[:price]}円)ですね。"
  menu
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS)
puts 'フードメニューはいかがですか?'
order2 = take_order(FOODS)
total = order1[:price] + order2[:price]
puts "お会計は#{total}円になります。ありがとうございました！"
