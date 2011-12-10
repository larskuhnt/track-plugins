# encoding: utf-8
require 'spec_helper'
require 'track/active_record'

describe Track::ActiveRecord do
  
  before do
    Track.use Track::ActiveRecord
    Track.boot!(File.join(ROOT, 'skeleton_ar'))
  end
  
  it "should be connected to the database" do
    Track::ActiveRecord.connected?.should be_true
  end
  
  it "should load the database config" do
    Track::ActiveRecord['adapter'].should == 'sqlite3'
    Track::ActiveRecord[:database].should == ':memory:'
  end
  
  it "should be able to execute some sql" do
    conn = ActiveRecord::Base.connection
    conn.create_table(:test) do |t|
      t.string :test
    end
    conn.execute("INSERT INTO test (test) VALUES ('test')")
    conn.select_all('SELECT * FROM test').first['test'].should == 'test'
  end
  
end
