require 'rubygems'
require 'bundler'
require 'stringio'
require 'zlib'

Bundler.require

BUCKET = 'anaenders.com'

static_dir = File.join(File.dirname(__FILE__), 'static')

s3 = Aws::S3::Client.new

Dir.chdir(static_dir) do
  Dir.glob('**/**') do |filename|
    next if File.directory?(filename)

    print "uploading #{filename}"
 
    strio = StringIO.open('', 'w')
    gz = Zlib::GzipWriter.new(strio)
    gz.write(open(filename).read)
    gz.close

    s3.put_object(
      bucket: BUCKET,
      key: filename,
      body: strio.string,
      acl: 'public-read',
      content_encoding: 'gzip',
      content_type: MIME::Types.type_for(filename).first.content_type
    )

    puts " ... DONE!"
  end
end
