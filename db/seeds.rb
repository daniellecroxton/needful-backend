
  user1 = User.create(name: 'johndoe85')
  user2 = User.create(name: 'sallys123')
  item1 = Item.create(name: '8 qt. Stockpot', description: 'Stainless steel 8 qt. stockpot with lid', price: 5, user_id:1 )
  item2 = Item.create(name: 'Queen Mattress', description: 'Queen foam mattress, 2 years old', price: 100, user_id:2 )
  item3 = Item.create(name: 'Down Jacket', description: 'Womens large down jacket in black', price: 20, user_id:2 )
  item4 = Item.create(name: 'Washer', description: 'Top loading white washer, 5 cycles, good condition', price: 200, user_id:1 )
  item5 = Item.create(name: 'Leather Boots', description: 'Mens brown lace-up leather boots, size 9', price: 15, user_id:1 )

