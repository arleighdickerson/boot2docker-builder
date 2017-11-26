Vagrant.configure(2) do |config|
  config.ssh.username = 'docker'
  config.ssh.insert_key = false
  config.ssh.shell = 'ash'
  config.ssh.private_key_path = File.join(File.dirname(File.absolute_path(__FILE__)),'id_rsa')
end
