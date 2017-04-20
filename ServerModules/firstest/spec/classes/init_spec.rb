require 'spec_helper'
describe 'firstest' do
  context 'with default values for all parameters' do
    it { should contain_class('firstest') }
  end
end
