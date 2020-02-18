class TaskSerializer < ActiveModel::Serializer
  # attributes :id
  # attributes :id, :name, :priority, :due_date

  	attributes :id, :name, :priority, :converted_due_date

  	def converted_due_date
  	object.due_date.strftime('%A, %b %d')
	end
end
