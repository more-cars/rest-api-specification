import {describe, expect, test, vi} from "vitest"
import {getJiraApiAuthKey} from "../lib/getJiraApiAuthKey"

describe('Get Jira API auth key', () => {
    test('Missing username', () => {
        vi.stubEnv('JIRA_API_USERNAME', undefined)
        vi.stubEnv('JIRA_API_TOKEN', 'test')

        const apiToken = getJiraApiAuthKey()

        vi.unstubAllEnvs()

        expect(apiToken)
            .toBe(false)
    })

    test('Missing API token', () => {
        vi.stubEnv('JIRA_API_USERNAME', 'test')
        vi.stubEnv('JIRA_API_TOKEN', undefined)

        const apiToken = getJiraApiAuthKey()

        vi.unstubAllEnvs()

        expect(apiToken)
            .toBe(false)
    })

    test('All credentials missing', () => {
        vi.stubEnv('JIRA_API_USERNAME', undefined)
        vi.stubEnv('JIRA_API_TOKEN', undefined)

        const apiToken = getJiraApiAuthKey()

        vi.unstubAllEnvs()

        expect(apiToken)
            .toBe(false)
    })

    test('All credentials provided', () => {
        vi.stubEnv('JIRA_API_USERNAME', 'test')
        vi.stubEnv('JIRA_API_TOKEN', 'test')

        const apiToken = getJiraApiAuthKey()

        vi.unstubAllEnvs()

        expect(apiToken)
            .toBe('dGVzdDp0ZXN0')
    })
})
