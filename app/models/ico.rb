class Ico < ApplicationRecord

  validates :ico_ticker, presence: true
  validates :ico_name, presence: true
  validates :ico_rating, presence: true
  validates :ico_main_sale_open, presence: true
  validates :ico_main_sale_close, presence: true

  validates_uniqueness_of :ico_ticker, :case_sensitive => false

  before_save :uppercase_ico_ticker, :uppercase_ico_name, :check_ico_main_sale

  # default_scope -> { order(updated_at: :desc) }
  # default_scope -> { order(ico_main_sale_open: :desc) }
  # default_scope -> { order(ico_rating: :desc) }
  scope :ico_rating, -> {order(ico_rating: :desc)}

  def uppercase_ico_ticker
    ico_ticker.upcase!
  end

  def uppercase_ico_name
    ico_name.upcase!
  end

  def check_ico_main_sale
    if ico_main_sale_open.nil?
      ico_main_sale_open == now
    end
    if ico_main_sale_close.nil?
      ico_main_sale_open == now
    end

  end



  enum idea_evaluation_type: ['Excellent Idea', 'Good Idea', 'Average Idea', 'Poor Idea']


  enum team_evaluation_type: ['Excellent Team', 'Good Team', 'Average Team', 'Poor Team']


  enum advisors_evaluation_type: ['Zero MVP Advisors', 'One MVP Advisor', 'Two MVP Advisors', 'Three+ Advisors' ]


  enum alpha_beta_evaluation_type: ['No Alpha/Beta', 'Has Alpha/Beta']


  enum token_metrics_evaluation_type: ['No Token', 'Has Token']


  enum platform_app_evaluation_type: ['Platform', 'App']


  enum website_evaluation_type: ['Professional Website', 'Amateur Website']


  enum github_evaluation_type: ['Github - No', 'Github - Yes']


  enum social_evaluation_type: ['1000', '2000', '3000', '4000', '5000', '6000', '7000', '8000', '9000', '10,000']


  enum bounty_evaluation_type: ['No Bounty', 'Has Bounty']


  enum celebrity_evaluation_type: ['No Celebrity', 'Has Celebrity']
end
