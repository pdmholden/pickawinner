#!/usr/bin/env ruby

require_relative 'lib/extract_winner'

inputs = ARGV

picker = ExtractWinner.new(inputs)
picker.pick
picker.print_picks
