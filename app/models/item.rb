class Item < ApplicationRecord
  attachment :image
  
  enum purpose: { いつでも: 0, 誕生日: 1, 記念日: 2, バレンタイン: 3, クリスマス: 4 }
  enum for_someone: { 誰でも: 0, 友人: 1, 恋人: 2, 家族: 3}
  enum gender: { どちらでも: 0, 男性: 1, 女性: 2 }
  enum age: { age10: 0, age20: 1, age30: 2, age40: 3, age50: 4, age60: 5, age70: 6, age80: 7 }
end
