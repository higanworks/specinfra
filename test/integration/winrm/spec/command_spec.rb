describe Specinfra::Backend::Winrm do
  describe "#create_command_class" do
    it "creates class based on Windows" do
      expect(Specinfra.backend.command.send(:create_command_class, 'user')).to eq Specinfra::Command::Windows::Base::User
      expect(Specinfra.backend.command.send(:create_command_class, 'service')).to eq Specinfra::Command::Windows::Base::Service
    end
  end

  describe "#command.get" do
    subject{Specinfra.backend.command.get(:check_user_exists, 'testuser')}

    it "returns powershell command" do
      expect(subject).to be_a_kind_of(Specinfra::Backend::PowerShell::Command)
    end
  end

  describe "#run_command" do
    subject{Specinfra.backend.run_command('net user')}

    it "remote command success" do
      expect(subject.stdout).to match /Guest/
    end
  end
end
