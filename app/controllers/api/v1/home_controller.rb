# frozen_string_literal: true

module Api
  module V1
    class HomeController < ApplicationController
      include ActionView::Helpers::DateHelper
      helper StatsHelper

      def welcome; end
    end
  end
end
