module ApplicationHelper

  def flash_class(level)
    case level
    when 'notice' then "alert alert-info"
    when 'success' then "alert alert-success w-50 mx-auto"
    when 'error' then "alert alert-danger"
    when 'alert' then "alert alert-warning"
    end
  end


  def full_name(a, b)
    "#{a}  #{b}"
  end

  def errors_for(object)
    if object.errors.any?
      content_tag(:div, class: "card border-danger w-50 mx-auto") do
        concat(content_tag(:div, class: "card-header bg-danger text-white") do
          concat "#{pluralize(object.errors.count, "error")} prohibited this #{object.class.name.downcase} from being saved:"
        end)
        concat(content_tag(:ul, class: 'mb-0 list-group list-group-flush') do
          object.errors.full_messages.each do |msg|
            concat content_tag(:li, msg, class: 'font-weight-bold list-group-item')
          end
        end)
      end
    end
  end

end
