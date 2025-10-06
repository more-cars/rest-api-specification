import fs from "fs"
import {expect, test} from "vitest"
import type {JiraEpic} from "../lib/types/JiraEpic"
import {extractJiraEpics} from "../lib/extractJiraEpics"
import {validateJson} from "../../tests/_toolbox/validateJson.ts"
import {EpicSchema} from "./schemas/EpicSchema"

test('Extracting all epic data from the Jira response', async () => {
    const jiraEpics: Array<JiraEpic> = JSON.parse(
        fs.readFileSync(__dirname + '/fixtures/jira_epic_collection.json', {
            encoding: 'utf8',
            flag: 'r'
        }))

    const extractedEpics = extractJiraEpics(jiraEpics)

    expect(extractedEpics.length)
        .toEqual(jiraEpics.length)

    extractedEpics.forEach((epic) => {
        expect(validateJson(epic, EpicSchema))
            .toBeTruthy()
    })
})
