require 'user'
require 'pg'

describe User, :user do
  let(:user) { User.new('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22') }

  describe '#create' do
    it 'Returns a new instance of User' do
      expect(User.create('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22')).to eq user
    end
  end

  describe '#email' do
    it 'Returns the email of the user' do
      expect(User.create('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22').email). to eq 'example@hotmail.co.uk'
    end
  end

  describe '#password' do
    it 'Returns the password of the user' do
      expect(User.create('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22').password). to eq '1234'
    end
  end

  describe '#name' do
    it 'Returns the name of the user' do
      expect(User.create('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22').name). to eq 'Sam Worrall'
    end
  end

  describe '#username' do
    it 'Returns the username of the user' do
      expect(User.create('example@hotmail.co.uk', '1234', 'Sam Worrall', 'SW22').username). to eq 'SW22'
    end
  end
end
