import {toMarkdown} from "mdast-util-to-markdown"
import {fromADF} from "mdast-util-from-adf"
import type {JiraEpic} from "./types/JiraEpic"
import type {Epic} from "./types/Epic"

export function extractJiraEpics(epics: JiraEpic[]): Epic[] {
    const extractedEpics: Epic[] = []

    epics.forEach(jiraEpic => {
        extractedEpics.push({
            id: jiraEpic.key,
            title: jiraEpic.fields.summary,
            data_structure: extractDataStructure(jiraEpic.fields.customfield_10764),
            created_at: jiraEpic.fields.created,
            updated_at: jiraEpic.fields.updated,
        } as Epic)
    })

    return extractedEpics
}

function extractDataStructure(doc: any) {
    if (!doc) {
        return ''
    }

    return toMarkdown(fromADF(doc))
}
