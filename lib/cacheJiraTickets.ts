import fs from "fs"
import type {TicketType} from "./types/TicketType"
import {JiraEpic} from "./types/JiraEpic"
import {JiraStory} from "./types/JiraStory"
import {JiraAcceptanceCriterion} from "./types/JiraAcceptanceCriterion"
import {XrayTest} from "./types/XrayTest"

export function cacheJiraTickets(ticketType: TicketType, ticketCollection: (JiraEpic | JiraStory | JiraAcceptanceCriterion)[], path = './_temp') {
    cacheTickets("jira", ticketType, ticketCollection, path)
}

export function cacheXrayTickets(ticketType: TicketType, ticketCollection: XrayTest[], path = './_temp') {
    cacheTickets("xray", ticketType, ticketCollection, path)
}

function cacheTickets(provider: 'jira' | 'xray', ticketType: TicketType, ticketCollection: (JiraEpic | JiraStory | JiraAcceptanceCriterion | XrayTest)[], path = './_temp') {
    if (!fs.existsSync(path)) {
        fs.mkdirSync(path, {recursive: true})
    }

    fs.writeFileSync(path + '/' + provider + '_' + ticketType + '_collection.json', JSON.stringify(ticketCollection, null, 2))
}
