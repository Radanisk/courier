# -*- coding: utf-8 -*-
require 'spec_helper'

describe Courier::Service::GritterNotices do
  describe '#message' do
    it 'send message to gritter_notice' do
      args={:a=>1}
      owner = double
      template = double :key=>:template_key
      owner.should_receive(:gritter_notice).with(template.key,args)
      subject.message owner, template, args
    end
  end

  describe '#deliver!' do
    it 'do nothing' do
      subject.deliver!
    end
  end
end