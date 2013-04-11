class AddTeamSupervisorColumn < ActiveRecord::Migration
  def change
    add_column :teams, :supervisor_id, :integer
  end
end
