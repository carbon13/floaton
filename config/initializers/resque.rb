Resque.redis = Redis.new(host: 'localhost', post: 6379)
Resque.after_fork = Proc.new { ActiveRecord::Base.establish_connection }
Resque.schedule = YAML.load_file("#{Rails.root}/config/resque_schedules.yml")
