require 'specinfra'
require 'winrm'

require 'specinfra/helper/set'
include Specinfra::Helper::Set

set :backend, :winrm
Specinfra.configuration.winrm = ::WinRM::WinRMWebService.new("http://127.0.0.1:5985/wsman", :plaintext, :user => "appveyor", :pass => ENV['WINDOWS_PASSWORD'], :basic_auth_only => true)
