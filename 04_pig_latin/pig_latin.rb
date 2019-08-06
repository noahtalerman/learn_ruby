#write your code here

def translate string
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    words = string.split(' ')
    new_words = []
    words.each do |word|
        if vowels.index(word[0]) != nil
            new_word = word + 'ay'
            new_words.push(new_word)
        elsif word.index('qu') != nil
            idx = word.index('qu')
            new_word = word[idx + 2..word.length - 1] + word[0..idx + 1] + 'ay'
            new_words.push(new_word)
        elsif vowels.index(word[0]) == nil && vowels.index(word[1]) == nil && vowels.index(word[2]) == nil
            new_word = word[3..word.length - 1] + word[0..2] + 'ay'
            new_words.push(new_word)
        elsif vowels.index(word[0]) == nil && vowels.index(word[1]) == nil
            new_word = word[2..word.length - 1] + word[0..1] + 'ay'
            new_words.push(new_word)
        elsif vowels.index(word[0]) == nil
            new_word = word[1..word.length - 1] + word[0] + 'ay'
            new_words.push(new_word)
        end
    end
    new_words.join(' ')
end