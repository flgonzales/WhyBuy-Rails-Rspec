module ItemsHelper
  def toggle_btn(available)
    case available
    when true
      'This item <i style="color:green" class="fa fa-toggle-on"></i>'
    when false
      'This item <i style="color:red" class="fa fa-toggle-off"></i>'
    end
  end
end
