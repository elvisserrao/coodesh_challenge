set :chronic_options, hours24: true
set :environment, :development

every 1.day, at: '12:00' do
  runner "Product.import"
  runner "DbStatus.register_cron_execution"
end
