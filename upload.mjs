import axios from "axios"
import { to_js_data } from "@calcit/procs/lib/calcit-data.mjs"

export const uploadSchedule = async (content) => {
  await axios.post(
    "https://data-backs.chenyong.life/data/pudica-schedule-viewer",
    to_js_data(content),
  )
}
