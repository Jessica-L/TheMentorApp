require 'spec_helper'

describe Event do
  
  it { should respond_to(:title)}
  it { should respond_to(:starts_at)}
  it { should respond_to(:ends_at)}
  it { should respond_to(:all_day)}
  it { should respond_to(:description)}



end
