class <%= migration_class_name %> < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :ahoy_messages do |t|
      t.string :token

      # acount
      t.text :to
      t.integer :account_id
      t.string :account_type

      # optional - feel free to remove
      t.string :mailer
      t.text :subject
      # t.text :content

      # optional
      # t.string :utm_source
      # t.string :utm_medium
      # t.string :utm_term
      # t.string :utm_content
      # t.string :utm_campaign

      # timestamps
      t.timestamp :sent_at
      t.timestamp :opened_at
      t.timestamp :clicked_at
    end

    add_index :ahoy_messages, [:token]
    add_index :ahoy_messages, [:account_id, :account_type]
  end
end
