# frozen_string_literal: true

module AuthorAssignment
  module Patches
    module ProjectsControllerPatch
      def self.included(base)
        base.prepend InstanceMethods
      end

      module InstanceMethods
        def create
          super
          @project.author_id = params[:user_id]
          @project.save!
        end

        def update
          super
          @project.author_id = params[:user_id]
          @project.save!
        end
      end
    end
  end
end

ProjectsController.include AuthorAssignment::Patches::ProjectsControllerPatch unless ProjectsController.included_modules.include? AuthorAssignment::Patches::ProjectsControllerPatch
