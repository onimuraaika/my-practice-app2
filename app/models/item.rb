class Item < ApplicationRecord
  attachment :image
  
  enum price: { price1000: 0, price5000: 1, price10000: 2 } 
  enum purpose: { general: 0, birthday: 1, anniversary: 2, valentine: 3, christmas: 4 }
  enum for_someone: { everyone: 0, friend: 1, lover: 2, family: 3, baby: 4 }
  enum gender: { both: 0, male: 1, female: 2 }
  enum age: { age10: 0, age20: 1, age30: 2, age40: 3, age50: 4, age60: 5, age70: 6, age80: 7 }
end
