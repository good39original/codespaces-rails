Rails.application.routes.draw do
  # 検索フォームを表示するためのルート
root 'terms#index'

# Ajaxで検索を行うためのルート
get '/search', to: 'terms#search'

end
