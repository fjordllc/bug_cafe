# frozen_string_literal: true

require 'debug'

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

def print_menus(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
end

def take_order(menus)
  # debugger
  order_number = gets.to_i - 1
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  order_number
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
print_menus(DRINKS)
order_drink = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
print_menus(FOODS)
order_foods = take_order(FOODS)

total = DRINKS[order_drink][:price].to_i + FOODS[order_foods][:price].to_i
# debugger
puts "お会計は#{total}円になります。ありがとうございました！"
