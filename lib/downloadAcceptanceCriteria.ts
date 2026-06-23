import type {JiraAcceptanceCriterion} from "./types/JiraAcceptanceCriterion"
import {getJiraApiBaseUrl} from "./getJiraApiBaseUrl"
import {getJiraApiAuthKey} from "./getJiraApiAuthKey"

export async function downloadAcceptanceCriteria() {
    let results: JiraAcceptanceCriterion[] = []
    let nextPageToken = null

    try {
        let moreResultsPagesAreAvailable = true
        do {
            const data = await requestNextPage(nextPageToken)
            results = results.concat(data.issues)
            nextPageToken = data.nextPageToken
            moreResultsPagesAreAvailable = !!nextPageToken
        } while (moreResultsPagesAreAvailable)
    } catch (e) {
        console.error(e)
    }

    return results
}

async function requestNextPage(nextPageToken: string | null) {
    const response = await fetch(getJiraApiBaseUrl() + 'search/jql', {
        method: 'POST',
        headers: {
            'Authorization': `Basic ${getJiraApiAuthKey()}`,
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            "jql": 'project = MCA AND issuetype = "Acceptance Criteria" AND status IN ("Ready for Implementation", "In Development", "In Deployment", "Done")',
            "fields": [
                "parent",
                "summary",
                "description",
                "fixVersions",
                "created",
                "updated",
            ],
            nextPageToken,
            "maxResults": 100,
        })
    })

    return response.json()
}
