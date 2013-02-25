require 'spec_helper'

describe 'csshx' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('homebrew')

    should contain_homebrew__formula('csshx')

    should contain_package('boxen/brews/csshx')
  end
end