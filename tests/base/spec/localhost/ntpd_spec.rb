require 'spec_helper'

describe package('chrony') do
  it { should be_installed }
end

describe service('chrony') do
  it { should be_enabled   }
  it { should be_running   }
end
