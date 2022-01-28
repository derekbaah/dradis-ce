class Issues::EvidenceController < IssuesController
  before_action :set_issue, only: [:index]
  before_action :set_affected_nodes, only: [:index]

  def index
    @evidence_columns = ['Node'] | all_evidence_columns | ['Created by', 'Created',  'Updated']

    render layout: false
  end

  private

  def all_evidence_columns
    @issue.evidence
          .map { |evidence| evidence.fields.keys }
          .flatten
          .uniq - ['Title', 'Label']
  end

  def set_issue
    @issue = Issue.where(node_id: current_project.issue_library.id).find(params[:issue_id])
  end
end
