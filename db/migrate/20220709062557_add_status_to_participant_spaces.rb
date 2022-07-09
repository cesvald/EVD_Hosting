class AddStatusToParticipantSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :participant_spaces, :status, :integer, limit: 1
  end
end
