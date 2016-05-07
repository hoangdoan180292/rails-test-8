SimpleForm.setup do |config|
  config.wrappers :default, class: :input,
    hint_class: :field_with_hint, error_class: :field_with_errors do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  config.default_wrapper = :materialize_form
  config.boolean_style = :nested
  config.error_notification_tag = :div
  config.error_notification_class = 'error_notification'
  config.browser_validations = false
  config.boolean_label_class = 'checkbox'
  config.button_class = 'btn waves-effect waves-light'

  config.wrappers :materialize_form, class: 'input-field', error_class: 'has_error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :input
    b.use :label
    b.use :error, wrap_with: { tag: 'p' , class: 'error-text'}
    b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
  end
end