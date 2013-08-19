ActiveAdmin.register NewsViewer do
  index do
    column :title
    column :body
    column :excerpt
    column :author
    column :media_file_name
    default_actions
  end

  show do
    attributes_table do
      row :title
      row :body
      row :excerpt
      row :media do
        image_tag(news_viewer.media.url(:full))
      end
      row :author
    end
  end
  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.inputs "News Clippings", :multipart => true do
      f.input :title
      f.input :body
      f.input :excerpt
      f.input :media
    end
    f.buttons
  end
end
