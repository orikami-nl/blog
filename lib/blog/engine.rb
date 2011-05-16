module Blog
  class Engine < Rails::Engine
    isolate_namespace Blog
    config.generators do |g|
      g.test_framework  :rspec
    end
  end
end
