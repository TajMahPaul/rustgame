// The wasm-pack uses wasm-bindgen to build and generate JavaScript binding file.
// Import the wasm-bindgen crate.

use wasm_bindgen::prelude::*;
use wasm_bindgen::JsCast;
use console_error_panic_hook;


#[wasm_bindgen]
pub fn intro() {
    console_error_panic_hook::set_once();
    let window = web_sys::window().unwrap();
    let document = window.document().unwrap();
    let canvas = document.get_element_by_id("canvas").unwrap();
    let canvas: web_sys::HtmlCanvasElement = canvas
        .dyn_into::<web_sys::HtmlCanvasElement>()
        .map_err(|_| ())
        .unwrap();

    let intro_img = document.get_element_by_id("intro").unwrap();
    let intro_img : web_sys::HtmlImageElement = intro_img
    .dyn_into::<web_sys::HtmlImageElement>()
    .map_err(|_| ())
    .unwrap();

    let context = canvas
        .get_context("2d")
        .unwrap()
        .unwrap()
        .dyn_into::<web_sys::CanvasRenderingContext2d>()
        .unwrap();

    context.draw_image_with_html_image_element(&intro_img, 173.0, 24.0).unwrap();
 
    
}