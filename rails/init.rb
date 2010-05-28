ActionController::Base.send(:include, Lipsum::Methods)
ActionController::Base.send(:helper_method, :lipsum)
