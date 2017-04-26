module EmployeesHelper
  def gravatar_for_employee(employee)
    gravatar_id = Digest::MD5::hexdigest(employee.full_name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: employee.name, class: "gravatar")
  end
end
