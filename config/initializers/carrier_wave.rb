if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_key_id: ENV['S3_SECTRE_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end
