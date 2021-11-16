module PostsHelper
    def display_index_post_links(post)
        capture do
            concat link_to('Preberi vec', post, class: 'stretched-link')
            if current_user == post.user
                concat link_to('Uredi', edit_post_path(post), class: 'stretched-link')
                concat link_to('Izbrisi', post, method: :delete, data: { confirm: 'Are you sure?' })
            end
        end
    end 

    def display_show_post_links(post)
        capture do
            if current_user == post.user
                concat link_to 'Edit', edit_post_path(post) 
                concat '  |  '
            end
            concat link_to 'Back', posts_path
    end
end
end
