require 'rails_helper'

RSpec.describe Interview, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe '#show_result' do
    it 'show description of personne from csv file' do
      expect(Interview.show_result('interview_users.csv')).to eq 'employee_id:  1
office:  Paris
last_name: Flordelis
first_name: Turgeon
employee_id:  2
office:  Berlin
last_name: Ila
first_name: Bonsaint
employee_id:  3
office:  Tokyo
last_name: Billy
first_name: Gamelin
employee_id:  4
office:  Paris
last_name: Servet
first_name: Bogers
employee_id:  5
office:  London
last_name: Gils
first_name: Haraldsson
employee_id:  6
office:  Berlin
last_name: Laurits
first_name: Utnes
employee_id:  7
office:  London
last_name: Mason
first_name: Storey
employee_id:  8
office:  Berlin
last_name: Annegreet
first_name: Welten
employee_id:  9
office:  Berlin
last_name: Abigail
first_name: Drake'
    end
  end

  describe '#office_name' do
    it 'show an array of office s name' do
      expect(Interview.office_name('interview_users.csv' )).to match_array(['Berlin', 'London', 'Paris', 'Tokyo'])
    end
  end

  describe '#number_per' do
    it 'show an array of employee count per office' do
        expect(Interview.number_per(Interview.office_name('interview_users.csv'))).to match_array([4, 2, 2, 1])
    end
  end
end

