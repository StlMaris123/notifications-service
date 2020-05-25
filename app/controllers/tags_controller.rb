class TagsController < ApplicationController
    def index
        @tags = ActsAsTaggableOn::Tag.all
    end

    def show
        @tag =  ActsAsTaggableOn::Tag.find_by_id(params[:id])
        @forums = Forum.tagged_with(@tag.name)
    end
end
