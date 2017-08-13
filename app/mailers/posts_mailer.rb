class PostsMailer < ApplicationMailer
  def email_author(comment)
    
       @comment = comment
    
       mail(to: @comment.post.author.email, from: 'bbosh@alternateinterior.com', subject: "New Comment from #{@comment.email}")
    
    end
end
