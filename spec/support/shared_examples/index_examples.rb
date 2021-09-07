RSpec.shared_examples :index_examples do
  subject { get :index }
  it 'render the index template' do
    expect(subject).to render_template(:index)
  end
  it 'returns http success' do
    expect(subject).to have_http_status(:success)
  end
end
