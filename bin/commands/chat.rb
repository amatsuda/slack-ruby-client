# This file was auto-generated by lib/slack/web/api/tasks/generate.rake

desc 'Chat methods.'
command 'chat' do |g|
  g.desc 'This method deletes a message from a channel.'
  g.long_desc %( This method deletes a message from a channel. )
  g.command 'delete' do |c|
    c.flag 'ts', desc: 'Timestamp of the message to be deleted.'
    c.flag 'channel', desc: 'Channel containing the message to be deleted.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_delete(options))
    end
  end

  g.desc 'This method posts a message to a public channel, private group, or IM channel.'
  g.long_desc %( This method posts a message to a public channel, private group, or IM channel. )
  g.command 'postMessage' do |c|
    c.flag 'channel', desc: 'Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name. See below for more details.'
    c.flag 'text', desc: 'Text of the message to send. See below for an explanation of formatting.'
    c.flag 'username', desc: 'Name of bot.'
    c.flag 'as_user', desc: 'Pass true to post the message as the authed user, instead of as a bot.'
    c.flag 'parse', desc: 'Change how messages are treated. See below.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames.'
    c.flag 'attachments', desc: 'Structured message attachments.'
    c.flag 'unfurl_links', desc: 'Pass true to enable unfurling of primarily text-based content.'
    c.flag 'unfurl_media', desc: 'Pass false to disable unfurling of media content.'
    c.flag 'icon_url', desc: 'URL to an image to use as the icon for this message.'
    c.flag 'icon_emoji', desc: 'emoji to use as the icon for this message. Overrides icon_url.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_postMessage(options))
    end
  end

  g.desc 'This method updates a message in a channel.'
  g.long_desc %( This method updates a message in a channel. )
  g.command 'update' do |c|
    c.flag 'ts', desc: 'Timestamp of the message to be updated.'
    c.flag 'channel', desc: 'Channel containing the message to be updated.'
    c.flag 'text', desc: 'New text for the message, using the default formatting rules.'
    c.flag 'attachments', desc: 'Structured message attachments.'
    c.flag 'parse', desc: 'Change how messages are treated. See below.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_update(options))
    end
  end
end