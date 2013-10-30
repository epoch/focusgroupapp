Answer.destroy_all
Company.destroy_all
Product.destroy_all
Question.destroy_all
User.destroy_all


c1 = Company.create(:name => 'Apple', :picture => 'http://upload.wikimedia.org/wikipedia/commons/a/a5/Apple_gray_logo.png', :password => 'a', :password_confirmation => 'a')

u1 = User.create(:username => 'Matt', :password => 'a', :password_confirmation => 'a')

p1 = Product.create(:name => 'iMac', :about => 'This is a powerful desktop computer.', :image => 'http://i.i.cbsi.com/cnwk.1d/i/tim/2012/11/29/imac27inch_35440705_01_1_620x433.jpg')

q1 = Question.create(:question => 'What do you think?')
a1 = Answer.create(:answer => 'This product is great!')


p1.questions << q1

q1.answers << a1

c1.products << p1