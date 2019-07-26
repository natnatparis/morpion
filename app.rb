# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/app', __FILE__)
require 'board'
require 'game'
require 'player'
$:.unshift File.expand_path('./../lib/views', __FILE__)
require 'graphic_board'
require 'interface'

Interface.new # Launches the app
