class Notifier
  class SlackNotifier < Base
    private

    def notify
      client.ping notification.to_s
    end

    def client
      @client ||= Slack::Notifier.new AppConfig.slack.team,
        AppConfig.slack.token,
        channel: AppConfig.slack.default_channel,
        username: 'HelpApp'
    end
  end
end
