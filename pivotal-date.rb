require 'bundler'
Bundler.require

PivotalTracker::Client.token = 'Your pivotal tracker token here'

opts = Trollop::options do
  opt :project, "Project ID", :default => 0
  opt :tag    , "Tag name"  , :type => :string
  opt :per    , "Estimate per date", :default => 3
end

Trollop::die :project, "must give me the project ID" if opts[:project] <= 0

project = PivotalTracker::Project.find(opts[:project])

story_options = {:story_type => ['feature', 'bug']}
if opts[:tag].nil?
  story_options[:current_state] = ['unstarted', 'started']
else
  story_options[:label] = opts[:tag]
end

stories = project.stories.all(story_options)

stories_map = {}
stories.each do |story|
  stories_map[story.owned_by] = [] unless stories_map.has_key?(story.owned_by)
  stories_map[story.owned_by] << story
end

stories_map.each_key do |key|
  puts key
  estimates = 0
  stories_map[key].each do |story|
    estimate = story.estimate || 1 # When bug, make estimate 1
    puts "[#{estimate}] #{story.name}"
    estimates += estimate
  end
  puts "Estimates: #{estimates}"
  puts "Days     : #{estimates/opts[:per]}"
  puts ""
end
