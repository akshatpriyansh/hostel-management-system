module ApplicationHelper
  def bootstrap_class_for flash_type
    case flash_type
    when 'success'
      "alert-success" # Green
    when 'error'
      "alert-danger" # Red
    when 'alert'
      "alert-warning" # Yellow
    when 'notice'
      "alert-info" # Blue
    else
      flash_type.to_s
    end
  end

  def glyphicon_class_for flash_type
    case flash_type
    when 'success'
      "glyphicon glyphicon-ok" # Green
    when 'error'
      "glyphicon glyphicon-exclamation-sign" # Red
    when 'alert'
      "glyphicon glyphicon-question-sign" # Yellow
    when 'notice'
      "glyphicon glyphicon-info-sign" # Blue
    else
      flash_type.to_s
    end
  end
end
