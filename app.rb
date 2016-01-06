require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_score') do
  @word_score = params.fetch('word_score').scrabble()
  @word = params.fetch('word_score')
  erb(:word_score)
end
