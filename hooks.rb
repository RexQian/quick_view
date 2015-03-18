#coding: utf-8

class QuickViewHooks < Redmine::Hook::ViewListener
	render_on :view_issues_context_menu_end, :partial=> 'hooks/quick_view_context'
        render_on :view_layouts_base_html_head, :partial=> 'hooks/quick_view_issues_header'
        render_on :view_layouts_base_body_bottom, :partial=> 'hooks/quick_view_issues_footer'
end
