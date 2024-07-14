# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::CanvasesAccess do
  let(:client) { Slack::Web::Client.new }
  context 'canvases.access_delete' do
    it 'requires canvas_id' do
      expect { client.canvases_access_delete }.to raise_error ArgumentError, /Required arguments :canvas_id missing/
    end
  end
  context 'canvases.access_set' do
    it 'requires access_level' do
      expect { client.canvases_access_set(canvas_id: %q[F1234ABCD]) }.to raise_error ArgumentError, /Required arguments :access_level missing/
    end
    it 'requires canvas_id' do
      expect { client.canvases_access_set(access_level: %q[]) }.to raise_error ArgumentError, /Required arguments :canvas_id missing/
    end
  end
end
