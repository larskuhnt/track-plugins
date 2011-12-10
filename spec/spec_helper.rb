# encoding: utf-8
lib = File.expand_path('../../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

ROOT = File.expand_path('..', __FILE__)

ENV['RACK_ENV'] = 'test'

require 'track'
require 'sqlite3'
