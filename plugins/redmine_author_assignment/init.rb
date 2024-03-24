# frozen_string_literal: true

require_relative 'hooks/project_hooks'
require_relative 'lib/author_assignment/patches/projects_controller_patch'

Redmine::Plugin.register(:redmine_author_assignment) {}
