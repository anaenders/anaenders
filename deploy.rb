require 'rubygems'
require 'bundler'
require 'fileutils'
require 'stringio'
require 'zlib'
require 'yaml'

Bundler.require

require './app'

s3_conf = YAML::load(open('s3.yml'))

ACCESS_KEY_ID = s3_conf['access_key']
SECRET_ACCESS_KEY = s3_conf['secret']
BUCKET = 'anaenders.com'

static_dir = File.join(File.dirname(__FILE__), 'static')

FileUtils.rm_rf(static_dir)
FileUtils.mkdir_p(static_dir)
SinatraStatic.new(AnaEnders).build!(static_dir)
FileUtils.cp_r(Dir.glob(File.join(File.dirname(__FILE__), 'public') + '/*'), static_dir)

AWS::S3::Base.establish_connection!(:access_key_id => ACCESS_KEY_ID, :secret_access_key => SECRET_ACCESS_KEY)

Dir.chdir(static_dir) do
  Dir.glob('**/**') do |filename|
    next if File.directory?(filename)
    print "uploading #{filename}"
 
    strio = StringIO.open('', 'w')
    gz = Zlib::GzipWriter.new(strio)
    gz.write(open(filename).read)
    gz.close

    AWS::S3::S3Object.store(
      filename,
      strio.string,
      BUCKET,
      :access => :public_read,
      'Content-Encoding' => 'gzip'
    )
    puts " ... DONE!"
  end
end
