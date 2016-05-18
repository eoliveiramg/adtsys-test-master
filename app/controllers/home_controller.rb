class HomeController < ApplicationController
  include Concerns::WebmotorsCars

  def index
    persist_brands(brands)

    @brands = Brand.all
  end

  private
  def persist_brands(brands)
    brands.each do |brand_param|
      next if Brand.find_by_name(brand_param["Nome"])

      Brand.create(name: brand_param["Nome"], webmotors_id: brand_param["Id"])
    end
  end
end
