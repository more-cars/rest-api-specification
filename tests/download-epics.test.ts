import {assert, expect, test} from "vitest"
import {validateJson} from "../../tests/_toolbox/validateJson.ts"
import {downloadEpics} from "../lib/downloadEpics"
import {GetEpicsResponseSchema} from "./schemas/GetEpicsResponseSchema"

test('Downloading all epics from Jira - real request', async () => {
    const jiraEpics = await downloadEpics()

    if (!jiraEpics) {
        assert(false, 'Epics could not be loaded.')
    }

    expect(jiraEpics.length)
        .toBeGreaterThan(0)

    expect(validateJson(jiraEpics, GetEpicsResponseSchema))
        .toBeTruthy()
})
