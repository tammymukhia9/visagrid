module MembersHelper

 
  #   def gravatar_for(member)
  #   gravatar_id = Digest::MD5::hexdigest(member.email.downcase)
  #   gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
  #   image_tag(gravatar_url, alt: member.mem_last_name, class: "gravatar")
  # end

    def gravatar_for(member, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(member.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: member.mem_first_name, class: "gravatar")
  end

end
