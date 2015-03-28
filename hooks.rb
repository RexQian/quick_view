#coding: utf-8

class QuickViewTooltipHook < Redmine::Hook::ViewListener
  render_on :view_layouts_base_body_bottom, :partial=> 'hooks/quick_view_base_bottom_tooltip'
end

class QuickViewHook < Redmine::Hook::ViewListener
	render_on :view_issues_context_menu_end, :partial=> 'hooks/quick_view_context'
  render_on :view_layouts_base_html_head, :partial=> 'hooks/quick_view_base_head'
  render_on :view_layouts_base_body_bottom, :partial=> 'hooks/quick_view_base_bottom'
end

class QuickViewWorkTimeExtHook < Redmine::Hook::ViewListener
  render_on :view_layouts_base_body_bottom, :partial=> 'hooks/quick_view_base_bottom_worktime_ext'
end
