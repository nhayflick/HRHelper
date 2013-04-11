class TryAgain < ActiveRecord::Migration
  def create
    add_column :teams, :team_supervisor_id, :integer
  end
end
