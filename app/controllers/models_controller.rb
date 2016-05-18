class ModelsController < ApplicationController
  include Concerns::WebmotorsCars

  def index
    persist_models(params[:webmotors_brand_id])

    @models = Model.where(brand_id: params[:webmotors_brand_id])
  end

  private
  def persist_models(brand_id)
    models({ marca: brand_id }).each do |model_param|
      next if Model.where(name: model_param['Nome'], brand_id: brand_id).any?
      
      Model.create(brand_id: brand_id, name: model_param["Nome"])
    end
  end
end
