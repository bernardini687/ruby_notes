module AppStore

  App = Struct.new(:name, :creator, :version)
  
  APPS = [
    App.new(:buddhify, :rohan_gunatillake, 3.0),
    App.new(:waking_up, :sam_harris, 1.2),
    App.new(:headspace, :andy_puddicombe, 4.1)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end
