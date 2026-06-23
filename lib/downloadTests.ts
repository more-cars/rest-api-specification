import type {XrayTest} from "./types/XrayTest"
import {loadGraphqlQuery} from "./loadGraphqlQuery"
import {getXrayGraphqlUrl} from "./getXrayGraphqlUrl"
import {obtainXrayApiToken} from "./obtainXrayApiToken"

export async function downloadTests() {
    let results: XrayTest[] = []
    let startIndex = 0

    try {
        let moreResultsPagesAreAvailable = true
        do {
            const data = await requestNextPage(startIndex)
            results = results.concat(data.data.getTests.results)
            const totalResults = data.data.getTests.total
            startIndex = startIndex + 100
            moreResultsPagesAreAvailable = (startIndex < totalResults)
        } while (moreResultsPagesAreAvailable)
    } catch (e) {
        console.error(e)
    }

    return results
}

async function requestNextPage(startIndex: number) {
    let query = loadGraphqlQuery('getTests.gql')
    query = query.replace('$start', String(startIndex))

    const response = await fetch(getXrayGraphqlUrl(), {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            Authorization: `Bearer ${await obtainXrayApiToken()}`,
        },
        body: JSON.stringify({
            query: query,
        }),
    })

    return response.json()
}
