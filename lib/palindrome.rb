# Comment goes here
class Palindrome
  def self.palindrome?(string)
    # A string is a palindrome if:
    #   it's length is < 2
    #   or it's length is 2 and
    #     the characters match
    # string != 'ac'
    return true if string.length < 2
    letters = string.downcase.split('')
    letters.select! { |letter| letter =~ /\w/ }
    first_letter = letters.shift
    last_letter = letters.pop
    first_letter == last_letter && Palindrome.palindrome?(letters.join)
  end
end
