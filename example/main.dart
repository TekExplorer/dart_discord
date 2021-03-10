import 'package:dart_discord/Discord.dart' as discord;

void main() async {
  var webhook = discord.Webhook('https://discord.com/api/webhooks/xxxxxxxxxx/xxxxxxxxx');

  var webhookResult = await webhook.send(
    discord.WebhookMessage(
      username: 'forsen',
      avatarUrl: 'https://static-cdn.jtvnw.net/emoticons/v1/521050/3.0',
      content: '@everyone forsenE',
      tts: true,
      embeds: [
        discord.Embed(
          title: 'forsen is live!',
          url: 'https://twitch.tv/forsen',
          fields: [
            discord.EmbedField(
              name: 'Minecraft Run Count',
              value: '69420th',
              inline: true,
            ),
            discord.EmbedField(
              name: 'Viewers',
              value: '28,234',
            ),
          ],
          color: 65280,
          timestamp: DateTime.now().toUtc(),
        ),
      ],
    ),
  );

  print(webhookResult);
}
