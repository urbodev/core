module IconicHelper
  def iconic(file, options = {})
    class_names = %w{iconic}
    # unless options[:sizes].empty?
    #   options[:sizes].each do |size|
    #     class_names << "iconic-#{size}"
    #   end
    # end
    content_tag   :img, "",
                  class: class_names,
                  data: { src:  asset_path("icons/smart/#{file}.svg") }
  end
end