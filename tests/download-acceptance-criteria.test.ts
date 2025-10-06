import {assert, expect, test} from "vitest"
import {validateJson} from "../../tests/_toolbox/validateJson.ts"
import {downloadAcceptanceCriteria} from "../lib/downloadAcceptanceCriteria"
import {GetAcceptanceCriteriaResponseSchema} from "./schemas/GetAcceptanceCriteriaResponseSchema"

test('Downloading all acceptance criteria from Jira - real request', async () => {
    const jiraAcs = await downloadAcceptanceCriteria()

    if (!jiraAcs) {
        assert(false, 'Acceptance criteria could not be loaded.')
    }

    expect(jiraAcs.length)
        .toBeGreaterThan(0)

    expect(validateJson(jiraAcs, GetAcceptanceCriteriaResponseSchema))
        .toBeTruthy()
})
