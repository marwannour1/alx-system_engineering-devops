#!/usr/bin/env ruby
sender_pattern = /\[from:(.+?)\]/
reciever_pattern = /\[to:(.+?)\]/
flags_pattern = /\[flags:(.+?)\]/

log_entry = ARGV[0]

sender = log_entry.match(sender_pattern)[1]
reciever = log_entry.match(reciever_pattern)[1]
flags = log_entry.scan(flags_pattern).join

puts "#{sender},#{reciever},#{flags}"
