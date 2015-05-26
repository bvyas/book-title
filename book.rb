class Book
    attr_accessor :title

    $lowcase_words = ['the','a','as','an','on','of','over', 'under','in','beside','behind','the','and','but']

    def initialize(title = "untitled")
        colon = nil
        title_arr = title.downcase.split(' ')
        @title = []
        title_arr.each do |word|
            if word.include? ':'
                colon = title_arr.index(word)+1
            end

            if colon == title_arr.index(word)
                @title << word.capitalize
            elsif $lowcase_words.include?(word)
                @title<<word
            else
                @title<<word.capitalize
            end
        end
        @title[0] = @title[0].capitalize
        @title = @title.join(' ')
        @title
    end

    def change_title(title)
        colon = nil
        title_arr = title.downcase.split(' ')
        @title = []
        title_arr.each do |word|
            if word.include? ':'
                colon = title_arr.index(word)+1
            end

            if colon == title_arr.index(word)
                @title << word.capitalize
            elsif $lowcase_words.include?(word)
                @title<<word
            else
                @title<<word.capitalize
            end
        end
        @title[0] = @title[0].capitalize
        @title = @title.join(' ')
        @title
    end
 end

 book = Book.new('to kill a mockingbird')
 puts book.title