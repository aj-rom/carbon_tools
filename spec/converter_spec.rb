# frozen_string_literal: true
# Handles the conversion of bytes to any size, as well as into CO2
RSpec.describe CarbonTools::Converter do
  
  let(:converter) do
    CarbonTools::Converter.new
  end

  it 'cannot see raw data constant methods' do
    expect(converter).to_not respond_to(:average_kilo_watt_hour_per_gb, :average_carbon_factor_grid)
  end

  it 'can convert megabytes to bytes' do
    value = converter.megabytes_to_bytes(100)
    expect(value).to eq(10_485_700)
  end

  it 'can convert from bytes to megabytes' do
    value = converter.bytes_to_megabytes(10_485_700)
    expect(value).to eq(100)
  end

  it 'can convert gigabytes to bytes' do
    value = converter.gigabytes_to_bytes(1.532)
    expect(value).to eq(164_496_306.176)
  end

  it 'can convert bytes to gigabytes' do
    value = converter.bytes_to_gigabytes(164_496_306.176)
    expect(value).to eq(1.532)
  end
end
