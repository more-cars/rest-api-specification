import {assert, expect, test} from "vitest"
import {downloadTests} from "../lib/downloadTests"
import {validateJson} from "../../tests/_toolbox/validateJson"
import {GetTestsResponseSchema} from "./schemas/GetTestsResponseSchema"

test('Downloading all tests from Xray - real request', async () => {
    const xrayTests = await downloadTests()

    if (!xrayTests) {
        assert(false, 'Tests could not be loaded.')
    }

    expect(xrayTests.length)
        .toBeGreaterThan(0)

    expect(validateJson(xrayTests, GetTestsResponseSchema))
        .toBeTruthy()
})
