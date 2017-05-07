require 'spec_helper'
describe 'postfix_gmail' do

  context 'with defaults for all parameters' do
    it { should contain_class('postfix_gmail') }
  end
end
