import type {JiraEpic} from "./types/JiraEpic"
import {getJiraApiBaseUrl} from "./getJiraApiBaseUrl"
import {getJiraApiAuthKey} from "./getJiraApiAuthKey"

export async function downloadEpics(): Promise<false | JiraEpic[]> {
    let results: JiraEpic[] = []
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
            "jql": 'project = MCA AND issuetype = Epic AND status IN ("In Progress", "Done")',
            "fields": [
                "summary",
                "customfield_10764", // data structure field
                "created",
                "updated",
            ],
            nextPageToken,
            "maxResults": 100,
        })
    })

    return response.json()
}
