class AirQualityLog
  include Mongoid::Document
  include Mongoid::Timestamps

  field :co2, type: Integer
  field :codeID, type: Integer
  field :rtcLog, type: Integer
  field :msdLog, type: Integer
  field :pm1, type: Float
  field :erroLog, type: Integer
  field :pm10, type: Float
  field :boardID, type: Float
  field :moqaID, type: String
  field :adc0, type: Integer
  field :pmsLog, type: Integer
  field :adc3, type: Integer
  field :adc1, type: Integer
  field :pres, type: Float
  field :alt, type: Float
  field :pm25, type: Float
  field :adc2, type: Integer
  field :extTemp, type: Float
  field :bmeLog, type: Integer
  field :hum, type: Integer
  field :intTemp, type: Float
  field :timestamp, type: Integer # TODO: ver com o Jairo se já vamos salvar no banco de dados dele tratado
  field :tvocs, type: Integer
  field :ccsLog, type: Integer
  field :adsLog, type: Integer
end
