module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://s.gravatar.com/avatar/fa2827e9a307b118104e11fddc939dc4?s=#{size}"
    image_tag(gravatar_url,alt: user.username,class: "img-circle")
  end
end
