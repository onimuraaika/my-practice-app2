class Item < ApplicationRecord
  attachment :image
  
  enum purpose: { general: 0, birthday: 1, anniversary: 2, confession: 3, christmas: 4 }
  enum for_someone: { everyone: 0, friends: 1, lover: 2, family: 3}
  enum gender: { both: 0, male: 1, female: 2 }
  enum age: { age_10: 0, age20: 1, age30: 2, age40: 3, age50: 4, age60: 5, age70: 6, age80_: 7 }
end
