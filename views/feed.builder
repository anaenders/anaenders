xml.instruct! :xml, :version=> '1.0' 
require 'time'

xml.rss :version => '2.0' do
  xml.channel do
    xml.title("Ana Enders: Blogs")
    xml.link("http://www.anaenders.com/feed.rss")
    xml.description("Know all there is to know in Ana Enders' world")
    @blogs.reverse[0..5].each do |blog|
      xml.item do
        xml.title(blog['title'])
        xml.link("http://www.anaenders.com/blogs/#{blog['url']}")
        xml.pubDate(Time.parse(blog['date']).strftime('%a, %d %b %Y %T %z'))
        xml.guid("http://www.anaenders.com/blogs/#{blog['url']}")
      end
    end
  end
end
