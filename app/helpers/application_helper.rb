module ApplicationHelper
    def toggle_direction(column)
      params[:sort] == column && params[:direction] == 'asc' ? 'desc' : 'asc'
    end
  
    def sort_indicator(column)
      if params[:sort] == column
        params[:direction] == 'asc' ? '▲' : '▼'
      else
        ''
      end
    end
  end
  
  
  