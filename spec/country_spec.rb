# encoding: utf-8

require 'countries'
require 'cities'

describe Country do
  
  it 'should return correct hash of hashed cities' do
    ISO3166::Country.search('WF').cities.should have(39).cities
  end

  it 'should return empty hash for country with no cities' do
    ISO3166::Country.search('VA').cities.should have(0).cities
  end

end

