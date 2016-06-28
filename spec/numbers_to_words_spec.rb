require('rspec')
require('numbers_to_words.rb')

describe('Fixnum#numbers_to_words') do
  it('returns a word for numbers 1-9') do
    expect(1.numbers_to_words()).to(eq("one"))
  end
  it('returns a words for number 10') do
    expect(10.numbers_to_words()).to(eq("ten"))
  end
  it('returns a word for special cases of combinations of the tens and ones place') do
    expect(99.numbers_to_words()).to(eq("ninety nine"))
  end
  it('returns a word for the hundreds place') do
    expect(200.numbers_to_words()).to(eq("two hundred "))
  end
  it('returns a word for the thousands place') do
    expect(1234.numbers_to_words()).to(eq("one thousand two hundred thirty four"))
  end
  it('returns a word for the ten thousands place if the number is equal to or larger than 20,000') do
    expect(32234.numbers_to_words()).to(eq("thirty two thousand two hundred thirty four"))
  end
  it('returns a word for the ten thousands place if the number is less than 20,000 but greater than 9,999') do
    expect(19234.numbers_to_words()).to(eq("nineteen thousand two hundred thirty four"))
  end
  it('returns a word for the hundred thousands place') do
  expect(143000.numbers_to_words()).to(eq("one hundred forty three thousand "))
  end
  it('returns a word for the millions place') do
    expect(1230000.numbers_to_words()).to(eq("one million two hundred thirty thousand "))
  end
end
