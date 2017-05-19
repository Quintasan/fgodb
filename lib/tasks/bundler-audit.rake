# frozen_string_literal: true

require 'bundler/audit/task'
Bundler::Audit::Task.new

task default: 'bundle:audit'
