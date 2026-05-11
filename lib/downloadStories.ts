import type {JiraStory} from "./types/JiraStory"
import {getJiraApiBaseUrl} from "./getJiraApiBaseUrl"
import {getJiraApiAuthKey} from "./getJiraApiAuthKey"

export async function downloadStories() {
    let results: Array<JiraStory> = []
    let nextPageToken = null
    let moreResultsPagesAreAvailable = true

    try {
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
            "jql": 'project = MCA AND issuetype = Story AND status IN ("Ready for Implementation", "In Development", "In Approval", "In Release", "Done")',
            "fields": [
                "parent",
                "summary",
                "description",
                "customfield_10691", // user story
                "customfield_10732", // API Verb
                "customfield_10731", // API Path
                "customfield_10767", // Response options
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
