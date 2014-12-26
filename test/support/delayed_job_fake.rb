require 'delayed_job'
require 'mongoid'

class Delayed::Job
  class DelayedJobFake < Array
    # fake out Mongoid
    def desc(*args)
      DelayedJobFake.new
    end

    def skip(*args)
      DelayedJobFake.new
    end

    def limit(*args)
      DelayedJobFake.new
    end
  end

  def self.where(*args)
    DelayedJobFake.new
  end

  def self.count(*args)
    0
  end

  def self.desc(*args)
    DelayedJobFake.new
  end

  def self.find(*args)
    DelayedJobFake.new
  end
end