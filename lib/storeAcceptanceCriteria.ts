import fs from "fs"
import filenamify from "filenamify"
import type {AcceptanceCriterion} from "./types/AcceptanceCriterion"
import type {ReferenceTicket} from "./types/ReferenceTicket"
import {findReferenceTicket} from "./findReferenceTicket"

export function storeAcceptanceCriteria(data: AcceptanceCriterion[], referenceTickets: ReferenceTicket[] = [], basepath = __dirname + '/../spec/') {
    const processedTickets: ReferenceTicket[] = []

    data.forEach(ac => {
        const parentSubPath = findReferenceTicket(ac.parent_id, referenceTickets)?.sub_path ?? ''
        const subPath = parentSubPath + filenamify(ac.title) + '/'
        const folderName = basepath + subPath
        const fileName = 'data.json'

        if (!fs.existsSync(folderName)) {
            fs.mkdirSync(folderName, {recursive: true})
        }

        fs.writeFileSync(folderName + fileName, JSON.stringify(ac, null, 2) + "\n")

        processedTickets.push({
            type: 'acceptance_criterion',
            id: ac.id,
            sub_path: subPath,
            data: ac,
        })
    })

    return processedTickets
}
