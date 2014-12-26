module ApplicationHelper
  include IconicHelper
  
  def body_classes
    "#{params[:controller].gsub('/', ' ')} #{params[:action]}"
  end

  def wrapper_classes
    case @container_style
    when :static
      style = "container"
    when :fluid
      style = "container-fluid"
    when :full
      style = nil
    else
      style = "container"
    end
    ["wrapper", style].join(" ")
  end
end
