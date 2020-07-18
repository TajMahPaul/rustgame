// The wasm-pack uses wasm-bindgen to build and generate JavaScript binding file.
// Import the wasm-bindgen crate.

use wasm_bindgen::prelude::*;
use wasm_bindgen::JsCast;

// Our Add function
// wasm-pack requires "exported" functions
// to include #[wasm_bindgen]
#[wasm_bindgen(start)]
pub fn start() -> Result<(), JsValue> {
    let document = web_sys::window().unwrap().document().unwrap();
    let body = document.body().expect("document should have a body");
    let image = document
        .create_element("image")?
        .dyn_into::<web_sys::HtmlImageElement>()?;
    body.append_child(&image)?;
    image.set_src("./assets/intro_text_animation.png");
    
    Ok(())
}