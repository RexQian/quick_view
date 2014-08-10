#coding: utf-8

class QuickViewHooks < Redmine::Hook::ViewListener
	render_on :view_issues_context_menu_end, :partial=> 'hooks/quick_view_context'
end
