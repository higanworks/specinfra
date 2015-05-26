describe specinfra::backend::winrm do
  describe "#create_command_class" do
    expect(Specinfra.backend.command.send(:create_command_class, 'user')).to eq "Specinfra::Command::Windows::Base::User"
    expect(Specinfra.backend.command.send(:create_command_class, 'user')).to eq "Specinfra::Command::Windows::Base::User"
  end

  describe "#get_command for powershell" do
    subject(Specinfra.backend.command.get(:check_user_exists, 'testuser'))
    expect(subject.class).to eq "Specinfra::Backend::PowerShell::Command"
  end

  describe "#run_command" do
  end
end
