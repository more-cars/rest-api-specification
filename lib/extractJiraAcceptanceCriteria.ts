import {toMarkdown} from "mdast-util-to-markdown"
import {fromADF} from "mdast-util-from-adf"
import type {JiraAcceptanceCriterion} from "./types/JiraAcceptanceCriterion"
import type {AcceptanceCriterion} from "./types/AcceptanceCriterion"

export function extractJiraAcceptanceCriteria(acs: JiraAcceptanceCriterion[]): AcceptanceCriterion[] {
    const extractedAcs: AcceptanceCriterion[] = []

    acs.forEach(jiraAc => {
        extractedAcs.push({
            id: jiraAc.key,
            parent_id: jiraAc.fields.parent.key,
            title: jiraAc.fields.summary,
            description: extractDescription(jiraAc.fields.description),
            release_version: jiraAc.fields.fixVersions.length > 0 ? jiraAc.fields.fixVersions[0].name : null,
            created_at: jiraAc.fields.created,
            updated_at: jiraAc.fields.updated,
        } as AcceptanceCriterion)
    })

    return extractedAcs
}

function extractDescription(doc: any) {
    if (!doc) {
        return ''
    }

    return toMarkdown(fromADF(doc))
}

