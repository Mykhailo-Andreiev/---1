require_relative '../task1'

RSpec.describe 'generate' do
  it 'generates a password of the specified length' do
    password = generate(10)
    expect(password.length).to eq(10)
  end

  it 'contains only valid characters' do
    valid_characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
    password = generate(15)
    password.each_char do |char|
      expect(valid_characters).to include(char)
    end
  end

  it 'generates different passwords on each call' do
    password1 = generate(12)
    password2 = generate(12)
    expect(password1).not_to eq(password2)
  end
end
