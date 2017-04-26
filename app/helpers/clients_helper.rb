module ClientsHelper
  def gravatar_for_client(client)
    gravatar_id = Digest::MD5::hexdigest(client.full_name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: client.full_name, class: "gravatar")
  end
  
  def current_client
    @current_client ||= Client.find_by(id: params[:id])
  end
end
