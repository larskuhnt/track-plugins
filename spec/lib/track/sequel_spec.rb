# encoding: utf-8
require 'spec_helper'
require 'track/sequel'

describe Track::Sequel do
  
  before do
    Track.use Track::Sequel
    Track.boot!(File.join(ROOT, 'skeleton_sequel'))
  end
  
  it "should load the config" do
    Track::Sequel['adapter'].should == 'sqlite'
    Track::Sequel[:database].should == ':memory:'
  end
  
  it "should set the DB constant" do
    Track::Sequel.db.should_not be_nil
  end
  
  it "should be able to execute some sql" do
    db = Track::Sequel.db
    p db.inspect
    db.create_table(:test) do |t|
      t.string :test
    end
    db << "INSERT INTO test VALUES ('test')"
    db['SELECT * FROM test'].first[:test].should == 'test'
  end
  
end
