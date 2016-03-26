class NationalNamesController < ApplicationController
  def index
    unless params[:Name].blank?
      @all_names = NationalName.where(:Name => params[:Name])
    end
    @names = NationalName.paginate(:page => params[:page])
    [:Gender, :Year, :Count, :Name].each do |param|
      unless params[param].blank? && params.dig(:national_names, param).blank?
        @names = @names.where(param => params[param] || params[:national_names][param])
      end
    end
    unless params[:starts_with].nil?
      @names = @names.where("name like ?", "#{params[:starts_with]}%")
    end
    unless params[:group_by_name].nil?
      @names = @names.group(:Name, :Gender).select("Gender, '' as Year, Name, sum(Count) as Count").order('Count desc')
    end
  end
end