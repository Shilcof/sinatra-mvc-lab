class PigLatinizer

    attr_reader :text

    def initialize(text = "Sample text.")
        @text = text
    end

    def piglatinize(phrase)
        phrase.split(" ").collect{|w| translate(w)}.join(" ")
    end

    def translate(word)
        if word.match(/\A[aAeEiIoOuU]/)
            word + "way"
        else
            word.gsub(/\z/,word.match(/\A[^aeiou]*/)[0]+"ay").gsub(/\A[^aeiou]*/,"")
        end
    end

end