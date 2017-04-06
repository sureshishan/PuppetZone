require 'spec_helper'
describe 'screen' do
  context 'with default values for all parameters' do
    it { should contain_class('screen') }
  end
end
