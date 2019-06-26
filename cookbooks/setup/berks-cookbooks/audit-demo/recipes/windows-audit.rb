control_group 'system integrity' do
  control 'iis config' do
    it 'does not have a default website' do
      expect(iis_website('Default Website')).to_not exist
    end

    it 'does not have the default pool' do
      expect(iis_app_pool('Default App Pool')).to_not exist
    end
  end

  control 'ports that should/should not be listening' do
    it 'port 80 is listening' do
      expect(port(80)).to be_listening
    end
  end
end
