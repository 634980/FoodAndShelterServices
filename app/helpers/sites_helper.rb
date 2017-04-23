module SitesHelper
  def gravatar_for(site)
    gravatar_id = Digest::MD5::hexdigest(site.site_name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: site.site_name, class: "gravatar")
  end
end
