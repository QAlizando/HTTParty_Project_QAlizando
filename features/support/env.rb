require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "rspec"
require 'faker'
include RSpec::Matchers
require_relative 'class_initialize.rb'

World(Request)