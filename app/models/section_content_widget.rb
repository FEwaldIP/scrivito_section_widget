class SectionContentWidget < Widget
  attribute :section_content, :widgetlist
  attribute :background_color, :string

  def selectable_color_classes(class_name, attribute)
    if Obj.respond_to?('selectable_color_classes')
      Obj.selectable_color_classes(class_name, attribute)
    else
      SectionContentWidget.fallback_colors
    end
  end

  private 
  def self.fallback_colors
    %w(transparent black gray light-gray red green blue yellow)
  end
end