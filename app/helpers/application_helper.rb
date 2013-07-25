module ApplicationHelper

	def link_to_add_fields(name, builder, association)
		new_object = builder.object.send(association).klass.new
		id = new_object.object_id
		fields = builder.fields_for(association, new_object, child_index: id) do |builder|
			render(association.to_s.singularize + "_fields", f: builder)
		end
		link_to(name, '#', class: 'add_fields', data: { id: id, fields: fields.gsub('\n', '' )})
	end

	# def link_to_add(name, association)
	# 	new_object = send(association)
	# 	id = new_object.object_id
	# 	fields = fields_for(association, new_object, child_index: id) do |builder|
	# 		render(association.to_s.singularize + "_fields")
	# 	end
	# 	link_to(name, '#', class: 'add_fields', data: { id: id, fields: fields.gsub('\n', '' )})
	# end
end
