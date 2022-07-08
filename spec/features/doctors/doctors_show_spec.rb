require 'rails_helper'

# For each child table
# As a visitor
# When I visit '/child'
# Then I see the name of each child record in the system
RSpec.describe 'the page shows doctor' do
    it 'displays indvidual doctor' do
        hospital = Hospital.create!(name: 'Childrens Hospital', public: true, phone: 6213333, location: 'Aurora')
        doctor = hospital.doctors.create!(name: 'Theodore Seuss', probono: true, specialty: 'Pediatrics')
        doctor_2 = hospital.doctors.create!(name: 'Gregory House', probono: false, specialty: 'Diagnostic Medicine')
        
        visit "/doctors/#{doctor.id}"

        expect(page).to have_content(doctor.name)
        expect(page).to_not have_content(doctor_2.name)

    end
    
    it 'displays the name of hospital the doctor works at ' do
        hospital = Hospital.create!(name: 'Childrens Hospital', public: true, phone: 6213333, location: 'Aurora')
        doctor = hospital.doctors.create!(name: 'Theodore Seuss', probono: true, specialty: 'Pediatrics')
        doctor_2 = hospital.doctors.create!(name: 'Gregory House', probono: false, specialty: 'Diagnostic Medicine')
        
        visit "/doctors/#{doctor.id}"
        save_and_open_page

        expect(page).to have_content(hospital.name)
    
    end

    it 'displays the attributes of the doctor' do
        hospital = Hospital.create!(name: 'Childrens Hospital', public: true, phone: 6213333, location: 'Aurora')
        doctor = hospital.doctors.create!(name: 'Theodore Seuss', probono: true, specialty: 'Pediatrics')
        doctor_2 = hospital.doctors.create!(name: 'Gregory House', probono: false, specialty: 'Diagnostic Medicine')
        
        visit "/doctors/#{doctor.id}"
        save_and_open_page
        
        expect(page).to have_content(doctor.specialty)
        expect(page).to have_content(doctor.probono)
        expect(page).to have_content(doctor.license_num)
        expect(page).to_not have_content(doctor_2.specialty)
    
    end


end 