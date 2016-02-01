require 'spec_helper'

RSpec.describe Slack::Web::Api::Mixins::Users do
  let(:klass) do
    Class.new do
      include Slack::Web::Api::Mixins::Users
    end
  end
  subject do
    klass.new
  end
  before do
    allow(subject).to receive(:users_list).and_return(Slack::Messages::Message.new(
                                                        'members' => [{
                                                          'id' => 'UDEADBEEF',
                                                          'name' => 'aws',
                                                          'profile' => {}
                                                        }]
    ))
  end
  context '#users_id' do
    it 'leaves users specified by ID alone' do
      expect(subject.users_id(user: 'U123456')).to eq('ok' => true, 'user' => { 'id' => 'U123456' })
    end
    it 'translates a user that starts with a #' do
      expect(subject.users_id(user: '@aws')).to eq('ok' => true, 'user' => { 'id' => 'UDEADBEEF' })
    end
    it 'fails with an exception' do
      expect { subject.users_id(user: '@foo') }.to raise_error Slack::Web::Api::Error, 'user_not_found'
    end
  end
  context '#users_search' do
    it 'finds a user' do
      expect(subject.users_search(user: 'aws')).to eq('ok' => true, 'members' => [{ 'id' => 'UDEADBEEF', 'name' => 'aws', 'profile' => {} }])
    end
  end if defined?(Picky)
end