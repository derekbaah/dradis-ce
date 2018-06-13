class User < ApplicationRecord
  # -- Relationships --------------------------------------------------------
  has_many :activities
  has_many :comments
  has_many :notifications

  # -- Callbacks ------------------------------------------------------------
  # -- Validations ----------------------------------------------------------
  # -- Scopes ---------------------------------------------------------------
  # -- Class Methods --------------------------------------------------------
  # -- Instance Methods -----------------------------------------------------
end
