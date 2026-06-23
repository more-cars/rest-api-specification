import fs from "fs"
import filenamify from 'filenamify'
import type {Epic} from "./types/Epic"
import type {ReferenceTicket} from "./types/ReferenceTicket"
import {findReferenceTicket} from "./findReferenceTicket"

export function storeEpics(data: Epic[], referenceTickets: ReferenceTicket[] = [], basepath = __dirname + '/../spec/') {
    const processedTickets: ReferenceTicket[] = []

    data.forEach(epic => {
        const parentSubPath = findReferenceTicket('', referenceTickets)?.sub_path ?? ''
        const subPath = parentSubPath + filenamify(epic.title) + '/'
        const folderName = basepath + subPath
        const fileName = 'data.json'

        if (!fs.existsSync(folderName)) {
            fs.mkdirSync(folderName, {recursive: true})
        }

        fs.writeFileSync(folderName + fileName, JSON.stringify(epic, null, 2) + "\n")

        processedTickets.push({
            type: 'epic',
            id: epic.id,
            sub_path: subPath,
            data: epic,
        })
    })

    return processedTickets
}
