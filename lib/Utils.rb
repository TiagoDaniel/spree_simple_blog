module Utils

  #slugify text using original text and the id 
  def self.to_slug(text, object)
    #strip the string
    ret = text

    #blow away apostrophes
    ret.gsub! /['`]/,""

    # @ --> at, and & --> and
    ret.gsub! /\s*@\s*/, " at "
    ret.gsub! /\s*&\s*/, " and "

    #replace all non alphanumeric, underscore or periods with underscore
     ret.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'

     #convert double underscores to single
     ret.gsub! /_+/,"-"

     #strip off leading/trailing underscore
     ret.gsub! /\A[_\.]+|[_\.]+\z/,""

     #to lower case
     ret.downcase!

     #check if slug doesn't exist
     cond = true
     counter = 0
     temporary_ret = ret
     while (cond)
       counter += 1
       if object.class.where(:slug => temporary_ret).size > 0
         temporary_ret = ret
         #add id to satisfy the uniqueness condition
         temporary_ret << '-' << counter.to_s
       else
         cond = false
       end
     end

     ret
  end
end