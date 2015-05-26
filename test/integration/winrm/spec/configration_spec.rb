describe "Configration" do
  it "os family get correctly from backend" do
    expect(Specinfra.backend.os_info[:family]).to eq 'windows'
  end
end
