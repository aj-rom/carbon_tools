# frozen_string_literal: true

RSpec.describe CarbonTools do
  # Used for making sure the Gem is set up correctly for public usage
  describe 'Gem Status' do
    it 'has a version number' do
      expect(CarbonTools::VERSION).not_to be nil
    end
  end

  # Ensures that we are receiving the correct data from the program (ie: conversion by country & byte )
  describe 'Data Validations' do
  end

end
