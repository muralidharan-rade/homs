json.set! :id, task.id
json.set! :name, task.name
json.set! :assignee, task.assignee
json.set! :description, task.description
json.set! :entity_code, task.entity_code(params[:entity_class].to_sym)
json.set! :process_instance_id, task.process_instance_id
json.set! :process_name, task.process_name
json.set! :entity_url, entity_url(task, params[:entity_class].to_sym)
json.set! :form, task.form.as_json.merge(csrf_token: csrf_token)
