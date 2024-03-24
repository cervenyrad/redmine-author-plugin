# frozen_string_literal: true

module AuthorAssignment
  module Hooks
    class ProjectHooks < Redmine::Hook::ViewListener
      render_on :view_projects_form, :partial => "authors/author_assignment"
    end
  end
end
