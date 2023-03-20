# frozen_string_literal: true

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'No se guarda articulo que no tenga titulo ni descripcion' do
    task = Task.new
    assert_not task.save, 'Se guarda articulo sin parametros'
  end

  test 'No falla cuando intenta borrar tarea que no existe' do
    status = Task.delete(-1)
    assert(status.zero?)
  end

  test 'Falla cuando no encuentra el dato que quiere' do
    task = Task.find(-1), 'Se encuentra el dato con id 9'
    assert false, 'Se puede crear la tarea'
  rescue ActiveRecord::RecordNotFound => e
    assert_not task, 'Se puede crear la tarea'
  end
end
