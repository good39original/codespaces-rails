class TermsController < ApplicationController
  def search
    query = params[:query]

    # データベースから検索
    @term = Term.find_by(name: query)

    if @term
      # 用語が見つかった場合、結果を返す
      render json: { result: @term.description }
    else
      # 見つからない場合のメッセージ
      render json: { result: "該当する用語が見つかりませんでした" }
    end
  end
end
