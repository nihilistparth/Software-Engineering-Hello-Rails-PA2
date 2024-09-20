module ApplicationHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
      link_to title, { sort: column, direction: direction }, class: "sortable"
    end
  
    def sort_class(column)
      if column == params[:sort]
        params[:direction] == "asc" ? "sort-asc" : "sort-desc"
      else
        ""
      end
    end
  
    def sort_indicator(column)
      if column == params[:sort]
        params[:direction] == "asc" ? "▲" : "▼"
      else
        ""
      end
    end
  end
  