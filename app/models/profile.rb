class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :job

  enum status: {
    applied: 0,
    shortlisted: 1,
    rejected: 2,
    selected: 3
  }

  validate :user_cannot_apply_twice

  private

  def user_cannot_apply_twice
    if Profile.exists?(user_id: user_id, job_id: job_id)
      errors.add(:base, "You already applied for this job")
    end
  end
end
