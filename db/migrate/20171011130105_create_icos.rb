class CreateIcos < ActiveRecord::Migration[5.1]
  def change
    create_table :icos do |t|
      t.string :ico_ticker
      t.string :ico_name
      t.integer :ico_rating
      t.integer :idea_evaluation_type, default: 0
      t.integer :team_evaluation_type, default: 0
      t.integer :advisors_evaluation_type, default: 0
      t.integer :alpha_beta_evaluation_type, default: 0
      t.integer :token_metrics_evaluation_type, default: 0
      t.integer :platform_app_evaluation_type, default: 0
      t.integer :website_evaluation_type, default: 0
      t.integer :github_evaluation_type, default: 0
      t.integer :social_evaluation_type, default: 0
      t.integer :bounty_evaluation_type, default: 0
      t.integer :celebrity_evaluation_type, default: 0
      t.timestamps
    end
  end
end
