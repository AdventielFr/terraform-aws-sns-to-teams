#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import json
import pymsteams
import os

def main(event, context):
    if 'Records' in event:
        record = event['Records'][0]
        if 'Sns' in record:
            snsMessage = record['Sns']
            teamsMessage = create_teams_message(snsMessage)
            # log
            teamsMessage.printme()
            # send message
            teamsMessage.send()

def create_teams_message(snsMessage):
    webHookUrl = os.environ["TEAMS_WEBHOOK_URL"]
    imageUrl = os.environ["TEAMS_IMAGE_URL"]
    result = pymsteams.connectorcard(webHookUrl)
    result.summary(snsMessage['Subject'])
    teamsSection = pymsteams.cardsection()
    teamsSection.activityTitle(snsMessage['Subject'])
    teamsSection.activitySubtitle(snsMessage['Message'])
    if imageUrl != None and imageUrl != '':
        teamsSection.activityImage(imageUrl)
    teamsSection.addFact("Timestamp", snsMessage['Timestamp'])
    teamsSection.addFact("MessageId", snsMessage['MessageId'])
    teamsSection.addFact("TopicArn", snsMessage['TopicArn'])
    teamsSection.addFact("Type", str(snsMessage['Type']))
    result.addSection(teamsSection)
    return result
