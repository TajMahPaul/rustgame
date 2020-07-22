// The wasm-pack uses wasm-bindgen to build and generate JavaScript binding file.
// Import the wasm-bindgen crate.

use wasm_bindgen::prelude::*;
use wasm_bindgen::JsCast;
use console_error_panic_hook;
use futures::task::{Context, Poll};
use std::cell::Cell;
use std::future::Future;
use std::pin::Pin;
use std::rc::Rc;
use web_sys::HtmlImageElement;

pub struct ImageFuture {
    image: Option<HtmlImageElement>,
    load_failed: Rc<Cell<bool>>,
}

impl ImageFuture {
    pub fn new(path: &str) -> Self {
        let image = HtmlImageElement::new().unwrap();
        image.set_src(path);
        image.set_hidden(true);
        ImageFuture {
            image: Some(image),
            load_failed: Rc::new(Cell::new(false)),
        }
    }
}

impl Future for ImageFuture {
    type Output = Result<HtmlImageElement, ()>;

    fn poll(mut self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Self::Output> {
        match &self.image {
            Some(image) if image.complete() => {
                let image = self.image.take().unwrap();
                let failed = self.load_failed.get();

                if failed {
                    Poll::Ready(Err(()))
                } else {
                    Poll::Ready(Ok(image))
                }
            }
            Some(image) => {
                let waker = cx.waker().clone();
                let on_load_closure = Closure::wrap(Box::new(move || {
                    waker.wake_by_ref();
                }) as Box<dyn FnMut()>);
                image.set_onload(Some(on_load_closure.as_ref().unchecked_ref()));
                on_load_closure.forget();

                let waker = cx.waker().clone();
                let failed_flag = self.load_failed.clone();
                let on_error_closure = Closure::wrap(Box::new(move || {
                    failed_flag.set(true);
                    waker.wake_by_ref();
                }) as Box<dyn FnMut()>);
                image.set_onerror(Some(on_error_closure.as_ref().unchecked_ref()));
                on_error_closure.forget();

                Poll::Pending
            }
            _ => Poll::Ready(Err(())),
        }
    }
}

#[wasm_bindgen]
pub fn intro() {
    console_error_panic_hook::set_once();
    let window = web_sys::window().unwrap();
    let document = window.document().unwrap();
    let canvas = document
        .create_element("canvas").unwrap()
        .dyn_into::<web_sys::HtmlCanvasElement>().unwrap();
    let body = document.body().unwrap();
    body.append_child(&canvas).unwrap();
    canvas.set_width(640);
    canvas.set_height(480);
    canvas.style().set_property("border", "solid").unwrap();
    body.style().set_property("width","100%").unwrap();
    body.style().set_property("height","100%").unwrap();
    body.style().set_property("background-color","black").unwrap();
    let context = canvas
        .get_context("2d")
        .unwrap()
        .unwrap()
        .dyn_into::<web_sys::CanvasRenderingContext2d>()
        .unwrap();
      
    let image_future = ImageFuture::new("../assets/intro_text_animation.png");
    let image = image_future.image.unwrap();
    context.draw_image_with_html_image_element(&image, 0.0, 0.0).unwrap();
 
    
}