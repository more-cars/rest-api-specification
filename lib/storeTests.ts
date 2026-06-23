import fs from "fs"
import filenamify from "filenamify"
import type {Test} from "./types/Test"
import type {ReferenceTicket} from "./types/ReferenceTicket"
import {findReferenceTicket} from "./findReferenceTicket"

export function storeTests(data: Test[], referenceTickets: ReferenceTicket[] = [], basepath = __dirname + '/../spec/') {
    const processedTickets: ReferenceTicket[] = []

    data.forEach(test => {
        const parentSubPath = findReferenceTicket(test.parent_id, referenceTickets)?.sub_path ?? ''
        const subPath = parentSubPath + filenamify(test.title) + '/'
        const folderName = basepath + subPath
        const fileName = 'data.json'

        if (!fs.existsSync(folderName)) {
            fs.mkdirSync(folderName, {recursive: true})
        }

        fs.writeFileSync(folderName + fileName, JSON.stringify(test, null, 2) + "\n")

        processedTickets.push({
            type: 'test',
            id: test.id,
            sub_path: subPath,
            data: test,
        })
    })

    return processedTickets
}
