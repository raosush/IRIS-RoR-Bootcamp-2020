# frozen_string_literal: true

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @student = Student.new
  end

  test 'Student table does not contain roll_no with required datatype' do
    assert Student.type_for_attribute('roll_no').type == :string
  end

  test 'Student table does not contain first name with required datatype' do
    assert Student.type_for_attribute('first_name').type == :string
  end

  test 'Student table does not contain middle name with required datatype' do
    assert Student.type_for_attribute('middle_name').type == :string
  end

  test 'Student table does not contain last name with required datatype' do
    assert Student.type_for_attribute('last_name').type == :string
  end

  test 'Student table does not contain branch with required datatype' do
    assert Student.type_for_attribute('branch').type == :string
  end

  test 'Student table does not contain cgpa with required datatype' do
    assert Student.type_for_attribute('cgpa').type == :float
  end

  test 'Student table does not contain address with required datatype' do
    assert Student.type_for_attribute('address').type == :string
  end

  test 'first_name attribute should not be null' do
    @student.valid?
    assert @student.errors[:first_name].any?
  end

  test 'middle_name attribute should not be null' do
    @student.valid?
    assert @student.errors[:middle_name].any?
  end

  test 'last_name attribute should not be null' do
    @student.valid?
    assert @student.errors[:last_name].any?
  end

  test 'cgpa attribute should not be null' do
    @student.valid?
    assert @student.errors[:cgpa].any?
  end

  test 'roll_no attribute should not be null' do
    @student.valid?
    assert @student.errors[:roll_no].any?
  end

  test 'branch attribute should not be null' do
    @student.valid?
    assert @student.errors[:branch].any?
  end

  test 'role_id attribute should not be null' do
    @student.valid?
    assert @student.errors[:role_id].any?
  end

  test 'cgpa should be greater than or equal to 0 & less than or equal to 10' do
    student_one = Student.new(cgpa: -1)
    student_one.valid?
    student_two = Student.new(cgpa: 11)
    student_two.valid?
    assert student_one.errors[:cgpa].any? && student_two.errors[:cgpa].any?
  end

  test 'role_id should be greater than or equal to 1 & less than or equal to 3' do
    student_one = Student.new(role_id: 0)
    student_one.valid?
    student_two = Student.new(role_id: 5)
    student_two.valid?
    assert student_one.errors[:role_id].any? && student_two.errors[:role_id].any?
  end

  test 'display_name should be defined & return string in appropriate format' do
    student = Student.new(first_name: 'IRIS', middle_name: 'NITK', last_name: 'WEB team')
    assert_match /\w+-\w+-\w+/, student.display_name
  end

end