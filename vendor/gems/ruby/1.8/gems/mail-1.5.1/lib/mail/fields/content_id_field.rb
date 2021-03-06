# encoding: utf-8
# 
# 
# 
module Mail
  class ContentIdField < StructuredField
    
    FIELD_NAME = 'content-id'
    CAPITALIZED_FIELD = "Content-ID"
    
    def initialize(*args)
      @uniq = 1
      if args.last.blank?
        self.name = CAPITALIZED_FIELD
        self.value = generate_content_id
        self
      else
        super(CAPITALIZED_FIELD, strip_field(FIELD_NAME, args.last))
      end
    end
    
    def tree
      @element ||= Mail::MessageIdsElement.new(value)
      @tree ||= @element.tree
    end
    
    def element
      @element ||= Mail::MessageIdsElement.new(value)
    end
    
    def name
      'Content-ID'
    end
    
    def content_id
      element.message_id
    end
    
    def to_s
      "<#{content_id}>"
    end
    
    # TODO: Fix this up
    def encoded
      "#{CAPITALIZED_FIELD}: #{to_s}\r\n"
    end
    
    def decoded
      "#{to_s}"
    end
    
    private
    
    def generate_content_id
      fqdn = ::Socket.gethostname
      "<#{Mail.random_tag}@#{fqdn}.mail>"
    end
    
  end
end
