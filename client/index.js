import init, {intro} from "./pkg/client.js"
async function run(){
  await init();
  intro();
}

run();