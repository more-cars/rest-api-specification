import {assert, expect, test} from "vitest"
import {validateJson} from "../../tests/_toolbox/validateJson.ts"
import {downloadStories} from "../lib/downloadStories"
import {GetStoriesResponseSchema} from "./schemas/GetStoriesResponseSchema"

test('Downloading all stories from Jira - real request', async () => {
    const jiraStories = await downloadStories()

    if (!jiraStories) {
        assert(false, 'Stories could not be loaded.')
    }

    expect(jiraStories.length)
        .toBeGreaterThan(0)

    expect(validateJson(jiraStories, GetStoriesResponseSchema))
        .toBeTruthy()
})
