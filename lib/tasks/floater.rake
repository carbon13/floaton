# encoding: utf-8
require 'open-uri'
require 'json'

namespace :floater do
  desc "To manage floater status."

    task :check => :environment do
      floaters = Floater.threshold.active
      floaters.each do |floater|
        if floater.value < Xchange.newest(floater.pair_id).rate
          FloatMailer.ups_and_downs.deliver_now
          # create status record
          logger = Logger.new(File.join(Rails.root, 'log', 'floater.log'))
          logger.info "#{floater.id}: Ups and downs occurred."
        end
      end
    end

    task :update_status => :environment do
      # update active -> false
    end

end