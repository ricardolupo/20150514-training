control_group 'system integrity' do

  control 'correct software is installed' do
    it 'ntp is installed' do
      expect(package('ntp')).to be_installed
    end

    it 'telnet is not installed' do
      expect(package('telnet')).to_not be_installed
    end
  end

# context https://youtu.be/QwHVlJtqhaI
  control 'rnax is not around' do
    it 'rnax is not installed' do
      expect(package('rnax')).to_not be_installed
    end

    it 'rnax is not running' do
      expect(service('rnax')).to_not be_running
    end
  end

end