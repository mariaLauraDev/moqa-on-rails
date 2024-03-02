module Api
  module V1
    class AirQualityLogsController < ResourceController
      before_action :set_air_quality_log, except: [:index, :new, :create]

      def index
        @air_quality_logs = AirQualityLog.all

        # TODO: include cache and pagination
        render json: @air_quality_logs
      end

      def show
        @air_quality_log = AirQualityLog.find(params[:id])
      end

      def new
        @air_quality_log = AirQualityLog.new
      end

      def create
        @air_quality_log = AirQualityLog.new(air_quality_log_params)

        if @air_quality_log.save
          render json: @air_quality_log, status: :created
        else
          # TODO: notify on discord or another logging service
          render json: @air_quality_log.errors, status: :unprocessable_entity
        end
      end

      def edit
      end

      def update
        if @air_quality_log.update(air_quality_log_params)
          redirect_to @air_quality_log
        else
          render :edit, status: :unprocessable_entity
        end
      end

      def destroy
      end

      private

      def air_quality_log_params
        params.permit(:co2,
                      :codeID,
                      :rtcLog,
                      :msdLog,
                      :pm1,
                      :erroLog,
                      :pm10,
                      :boardID,
                      :moqaID,
                      :adc0,
                      :pmsLog,
                      :adc3,
                      :adc1,
                      :pres,
                      :alt,
                      :pm25,
                      :adc2,
                      :extTemp,
                      :bmeLog,
                      :hum,
                      :intTemp,
                      :timestamp,
                      :tvocs,
                      :ccsLog, 
                      :adsLog
                    )
      end

      def set_air_quality_log
        @air_quality_log = AirQualityLog.find(params[:id])
      end
    end
  end
end
