class AddOperatingSystemToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :operating_system, :string
  end
end