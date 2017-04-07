require 'spec_helper'
describe 'classparams' do
  context 'with default values for all parameters' do
    it { should contain_class('classparams') }
  end
end
