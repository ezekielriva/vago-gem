module Vago
  class NameError < ::NameError
    @root_path = "./"

    def self.exception(e)
      require_relative "#{@root_path}#{e.name.downcase}"
    end

    def self.root_path=(path)
      @root_path = path
    end
  end
end
