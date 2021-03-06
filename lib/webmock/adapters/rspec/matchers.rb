module WebMock
  module Matchers
    def have_been_made
      WebMock::RequestProfileMatcher.new
    end
    
    def have_not_been_made
      WebMock::RequestProfileMatcher.new.times(0)
    end
    
    def have_requested(method, uri)
      WebMock::WebMockMatcher.new(method, uri)
    end
    
    def have_not_requested(method, uri)
      WebMock::WebMockMatcher.new(method, uri).times(0)
    end
  end
end