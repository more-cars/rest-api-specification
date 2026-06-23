import fs from "fs"
import filenamify from "filenamify"
import type {Story} from "./types/Story"
import type {ReferenceTicket} from "./types/ReferenceTicket"
import {findReferenceTicket} from "./findReferenceTicket"

export function storeStories(data: Story[], referenceTickets: ReferenceTicket[] = [], basepath = __dirname + '/../spec/') {
    const processedTickets: ReferenceTicket[] = []

    data.forEach(story => {
        const parentSubPath = findReferenceTicket(story.parent_id, referenceTickets)?.sub_path ?? ''
        const subPath = parentSubPath + filenamify(story.title) + '/'
        const folderName = basepath + subPath
        const fileName = 'data.json'

        if (!fs.existsSync(folderName)) {
            fs.mkdirSync(folderName, {recursive: true})
        }

        fs.writeFileSync(folderName + fileName, JSON.stringify(story, null, 2) + "\n")

        processedTickets.push({
            type: 'story',
            id: story.id,
            sub_path: subPath,
            data: story,
        })
    })

    return processedTickets
}
