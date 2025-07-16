class TestsController < ApplicationController
  before_action :find_test, only: :show

  def show; end

  def index
    @tests = Test.all
    @selected_test = Test.find(params[:id]) if params[:id].present?
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end
end
