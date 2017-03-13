gem 'yelp', require: 'yelp'
client = Yelp::Client.new({ consumer_key: h4mLLSpqcu9MYMZa5zWXsw,
                            consumer_secret: jimsWA43khM7pPrOVwj_XIvdLwE,
                            token: koj9-i4gzH-tV8tRwuTbjaGoGbXnuQ_1,
                            token_secret: KtPTZ4KG2sBzFJkIx02q9ol5qb8

                          })
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
end

Yelp.client.search('San Francisco', { term: 'food' })

client.search('San Francisco')

params = { term: 'food',
           limit: 3,
           category_filter: 'discgolf'
         }

locale = { lang: 'fr' }

client.search('San Francisco', params, locale)