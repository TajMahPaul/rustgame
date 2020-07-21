; ModuleID = 'probe1.3a1fbbbh-cgu.0'
source_filename = "probe1.3a1fbbbh-cgu.0"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

%"core::fmt::Formatter" = type { [0 x i32], i32, [0 x i32], i32, [0 x i32], { i32, i32 }, [0 x i32], { i32, i32 }, [0 x i32], { {}*, [3 x i32]* }, [0 x i8], i8, [3 x i8] }
%"core::fmt::::Opaque" = type {}
%"core::fmt::Arguments" = type { [0 x i32], { [0 x { [0 x i8]*, i32 }]*, i32 }, [0 x i32], { i32*, i32 }, [0 x i32], { [0 x { i8*, i8* }]*, i32 }, [0 x i32] }
%"alloc::string::String" = type { [0 x i32], %"alloc::vec::Vec<u8>", [0 x i32] }
%"alloc::vec::Vec<u8>" = type { [0 x i32], { i8*, i32 }, [0 x i32], i32, [0 x i32] }
%"core::ptr::Repr<u8>" = type { [2 x i32] }
%"alloc::alloc::Global" = type {}

@0 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 1
@1 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @0, i32 0, i32 0, i32 0), [4 x i8] zeroinitializer }>, align 4
@2 = private unnamed_addr constant <{ i8*, [0 x i8] }> <{ i8* bitcast (<{ i8*, [4 x i8] }>* @1 to i8*), [0 x i8] zeroinitializer }>, align 4
@3 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4
@4 = private unnamed_addr constant <{ i8*, [0 x i8] }> <{ i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @3, i32 0, i32 0, i32 0), [0 x i8] zeroinitializer }>, align 4

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h4c87ddf25f432b2eE"(i8* nonnull %unique) unnamed_addr #0 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1bd9ccb14d5e34fbE"(i8* nonnull %unique)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h422ce3d85f83d32eE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::fmt::ArgumentV1::new
; Function Attrs: nounwind
define hidden { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h5d2844e9737b15f2E(i32* noalias readonly align 4 dereferenceable(4) %x, i1 (i32*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #1 {
start:
  %0 = alloca %"core::fmt::::Opaque"*, align 4
  %1 = alloca i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)*, align 4
  %2 = alloca { i8*, i8* }, align 4
  %3 = bitcast i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %1 to i1 (i32*, %"core::fmt::Formatter"*)**
  store i1 (i32*, %"core::fmt::Formatter"*)* %f, i1 (i32*, %"core::fmt::Formatter"*)** %3, align 4
  %_3 = load i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4, !nonnull !0
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"core::fmt::::Opaque"** %0 to i32**
  store i32* %x, i32** %4, align 4
  %_5 = load %"core::fmt::::Opaque"*, %"core::fmt::::Opaque"** %0, align 4, !nonnull !0
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i8* }* %2 to %"core::fmt::::Opaque"**
  store %"core::fmt::::Opaque"* %_5, %"core::fmt::::Opaque"** %5, align 4
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %7 = bitcast i8** %6 to i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::::Opaque"*, %"core::fmt::Formatter"*)** %7, align 4
  %8 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !nonnull !0
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %11 = load i8*, i8** %10, align 4, !nonnull !0
  %12 = insertvalue { i8*, i8* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i8* } %12, i8* %11, 1
  ret { i8*, i8* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3fmt9Arguments6new_v117h5031e05815c77ef9E(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(24), [0 x { [0 x i8]*, i32 }]* noalias nonnull readonly align 4 %pieces.0, i32 %pieces.1, [0 x { i8*, i8* }]* noalias nonnull readonly align 4 %args.0, i32 %args.1) unnamed_addr #0 {
start:
  %_4 = alloca { i32*, i32 }, align 4
  %1 = bitcast { i32*, i32 }* %_4 to {}**
  store {}* null, {}** %1, align 4
  %2 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %2, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %pieces.0, [0 x { [0 x i8]*, i32 }]** %3, align 4
  %4 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %2, i32 0, i32 1
  store i32 %pieces.1, i32* %4, align 4
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 3
  %6 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_4, i32 0, i32 0
  %7 = load i32*, i32** %6, align 4
  %8 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_4, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %5, i32 0, i32 0
  store i32* %7, i32** %10, align 4
  %11 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %5, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 5
  %13 = getelementptr inbounds { [0 x { i8*, i8* }]*, i32 }, { [0 x { i8*, i8* }]*, i32 }* %12, i32 0, i32 0
  store [0 x { i8*, i8* }]* %args.0, [0 x { i8*, i8* }]** %13, align 4
  %14 = getelementptr inbounds { [0 x { i8*, i8* }]*, i32 }, { [0 x { i8*, i8* }]*, i32 }* %12, i32 0, i32 1
  store i32 %args.1, i32* %14, align 4
  ret void
}

; core::num::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num12NonZeroUsize13new_unchecked17h2cbfafe728ab71a5E(i32 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %n, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !1
  ret i32 %1
}

; core::num::NonZeroUsize::get
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num12NonZeroUsize3get17hfc4a45f3ed805f81E(i32 %self) unnamed_addr #0 {
start:
  ret i32 %self
}

; core::ptr::drop_in_place
; Function Attrs: nounwind
define hidden void @_ZN4core3ptr13drop_in_place17h23b4e5466e5f978cE(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17h9a3199a5ffcf8f4dE(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place
; Function Attrs: nounwind
define hidden void @_ZN4core3ptr13drop_in_place17h9a3199a5ffcf8f4dE(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
  call void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f6805ee44077a33E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %_1)
  br label %bb2

bb1:                                              ; preds = %bb2
  ret void

bb2:                                              ; preds = %start
  %0 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i32 }*
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17hc76b167a0ab8f2b9E({ i8*, i32 }* %0)
  br label %bb1
}

; core::ptr::drop_in_place
; Function Attrs: nounwind
define hidden void @_ZN4core3ptr13drop_in_place17hc76b167a0ab8f2b9E({ i8*, i32 }* %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd568b366a95c7801E"({ i8*, i32 }* align 4 dereferenceable(8) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17haa28f7fb6a527a24E(i8* %data, i32 %len) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i32 }, align 4
  %_3 = alloca %"core::ptr::Repr<u8>", align 4
  %0 = bitcast { i8*, i32 }* %_4 to i8**
  store i8* %data, i8** %0, align 4
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  store i32 %len, i32* %1, align 4
  %2 = bitcast %"core::ptr::Repr<u8>"* %_3 to { i8*, i32 }*
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 4
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = bitcast %"core::ptr::Repr<u8>"* %_3 to { [0 x i8]*, i32 }*
  %10 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 4
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i32 } %14, i32 %13, 1
  ret { [0 x i8]*, i32 } %15
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1bd9ccb14d5e34fbE"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind
define hidden zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8f72238ad08c06fdE"(i8* %self) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %0 = icmp eq i8* %self, null
  ret i1 %0
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nounwind
define hidden nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h422ce3d85f83d32eE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %ptr, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nounwind
define hidden nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3c64e1270ad775ddE"(i8* nonnull %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e625aea31545dd1E"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h422ce3d85f83d32eE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e625aea31545dd1E"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::alloc::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6Layout25from_size_align_unchecked17h8a52cacaa9b0a81eE(i32 %size, i32 %align) unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
; call core::num::NonZeroUsize::new_unchecked
  %_4 = call i32 @_ZN4core3num12NonZeroUsize13new_unchecked17h2cbfafe728ab71a5E(i32 %align), !range !1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 %size, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_4, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1
  %7 = insertvalue { i32, i32 } undef, i32 %4, 0
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1
  ret { i32, i32 } %8
}

; core::alloc::Layout::size
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6Layout4size17hdd3ac0a3b42d6bc2E({ i32, i32 }* noalias readonly align 4 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %0 = bitcast { i32, i32 }* %self to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; core::alloc::Layout::align
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6Layout5align17h4558691c71dc9b79E({ i32, i32 }* noalias readonly align 4 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %_2 = load i32, i32* %0, align 4, !range !1
; call core::num::NonZeroUsize::get
  %1 = call i32 @_ZN4core3num12NonZeroUsize3get17hfc4a45f3ed805f81E(i32 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::slice::from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core5slice18from_raw_parts_mut17h625965ccdac12268E(i8* %data, i32 %len) unnamed_addr #0 {
start:
; call core::ptr::slice_from_raw_parts_mut
  %0 = call { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17haa28f7fb6a527a24E(i8* %data, i32 %len)
  %_5.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %_5.0, 0
  %2 = insertvalue { [0 x i8]*, i32 } %1, i32 %_5.1, 1
  ret { [0 x i8]*, i32 } %2
}

; core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h53a33c0f3be6fbedE"([0 x i8]* nonnull align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
; call <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
  %0 = call { [0 x i8]*, i32 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6a815aacd4e1d742E"([0 x i8]* nonnull align 1 %self.0, i32 %self.1)
  %_4.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i32 } %1, i32 %_4.1, 1
  ret { [0 x i8]*, i32 } %2
}

; alloc::vec::Vec<T>::as_mut_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc3vec12Vec$LT$T$GT$10as_mut_ptr17hb61a8548189e513dE"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i32 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h11912d05abc75facE"({ i8*, i32 }* noalias readonly align 4 dereferenceable(8) %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8f72238ad08c06fdE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc5alloc7dealloc17h5cd50adcef11ccdfE(i8* %ptr, i32, i32) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::Layout::size
  %_4 = call i32 @_ZN4core5alloc6Layout4size17hdd3ac0a3b42d6bc2E({ i32, i32 }* noalias readonly align 4 dereferenceable(8) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::Layout::align
  %_6 = call i32 @_ZN4core5alloc6Layout5align17h4558691c71dc9b79E({ i32, i32 }* noalias readonly align 4 dereferenceable(8) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i32 %_4, i32 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::raw_vec::RawVec<T,A>::current_layout
; Function Attrs: nounwind
define hidden { i32, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17h762a32287e03c09eE"({ i8*, i32 }* noalias readonly align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_3 = load i32, i32* %3, align 4
  %_2 = icmp eq i32 %_3, 0
  br i1 %_2, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i32 1, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  br label %bb3

bb2:                                              ; preds = %start
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 0, i32* %5, align 4
  br label %bb6

bb3:                                              ; preds = %bb1
  store i32 1, i32* %0, align 4
  %6 = load i32, i32* %0, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_7 = load i32, i32* %7, align 4
  %size = mul i32 %6, %_7
; call core::alloc::Layout::from_size_align_unchecked
  %8 = call { i32, i32 } @_ZN4core5alloc6Layout25from_size_align_unchecked17h8a52cacaa9b0a81eE(i32 %size, i32 %4)
  %_8.0 = extractvalue { i32, i32 } %8, 0
  %_8.1 = extractvalue { i32, i32 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  store i32 %_8.0, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %_8.1, i32* %10, align 4
  br label %bb6

bb6:                                              ; preds = %bb5, %bb2
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = insertvalue { i32, i32 } undef, i32 %12, 0
  %16 = insertvalue { i32, i32 } %15, i32 %14, 1
  ret { i32, i32 } %16
}

; alloc::raw_vec::RawVec<T,A>::dealloc_buffer
; Function Attrs: nounwind
define hidden void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h0bb5eac3ea6c01caE"({ i8*, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca i32, align 4
  %_5 = alloca { i32, i32 }, align 4
  store i32 1, i32* %0, align 4
  %1 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp ne i32 %1, 0
  br i1 %_3, label %bb2, label %bb9

bb2:                                              ; preds = %bb1
; call alloc::raw_vec::RawVec<T,A>::current_layout
  %2 = call { i32, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_layout17h762a32287e03c09eE"({ i8*, i32 }* noalias readonly align 4 dereferenceable(8) %self)
  store { i32, i32 } %2, { i32, i32 }* %_5, align 4
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp ule i32 %4, 0
  %_7 = select i1 %5, i32 0, i32 1
  %6 = icmp eq i32 %_7, 1
  br i1 %6, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 0
  %layout.0 = load i32, i32* %7, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_5, i32 0, i32 1
  %layout.1 = load i32, i32* %8, align 4, !range !1
  %_10 = bitcast { i8*, i32 }* %self to %"alloc::alloc::Global"*
  %9 = bitcast { i8*, i32 }* %self to i8**
  %_13 = load i8*, i8** %9, align 4, !nonnull !0
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %_12 = call nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h4c87ddf25f432b2eE"(i8* nonnull %_13)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::ptr::non_null::NonNull<T>::cast
  %_11 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3c64e1270ad775ddE"(i8* nonnull %_12)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <alloc::alloc::Global as core::alloc::AllocRef>::dealloc
  call void @"_ZN62_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..AllocRef$GT$7dealloc17he92ea33e1e0eedc7E"(%"alloc::alloc::Global"* nonnull align 1 %_10, i8* nonnull %_11, i32 %layout.0, i32 %layout.1)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  br label %bb9

bb9:                                              ; preds = %bb8, %bb1
  ret void
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: nounwind
define hidden i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h11912d05abc75facE"({ i8*, i32 }* noalias readonly align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i32 }* %self to i8**
  %_2 = load i8*, i8** %0, align 4, !nonnull !0
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1bd9ccb14d5e34fbE"(i8* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; <alloc::alloc::Global as core::alloc::AllocRef>::dealloc
; Function Attrs: inlinehint nounwind
define internal void @"_ZN62_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..AllocRef$GT$7dealloc17he92ea33e1e0eedc7E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i32, i32) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::Layout::size
  %_5 = call i32 @_ZN4core5alloc6Layout4size17hdd3ac0a3b42d6bc2E({ i32, i32 }* noalias readonly align 4 dereferenceable(8) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp ne i32 %_5, 0
  br i1 %_4, label %bb2, label %bb5

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_7 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h7e625aea31545dd1E"(i8* nonnull %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_9.0 = load i32, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_9.1 = load i32, i32* %5, align 4, !range !1
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17h5cd50adcef11ccdfE(i8* %_7, i32 %_9.0, i32 %_9.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb4, %bb1
  ret void
}

; <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f6805ee44077a33E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
  %0 = call { [0 x i8]*, i32 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h851c69da2a8083b7E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self)
  %_5.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
; Function Attrs: nounwind
define hidden { [0 x i8]*, i32 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17headeffaab90b32a5E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T>::as_mut_ptr
  %_5 = call i8* @"_ZN5alloc3vec12Vec$LT$T$GT$10as_mut_ptr17hb61a8548189e513dE"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %_7 = load i32, i32* %0, align 4
; call core::slice::from_raw_parts_mut
  %1 = call { [0 x i8]*, i32 } @_ZN4core5slice18from_raw_parts_mut17h625965ccdac12268E(i8* %_5, i32 %_7)
  %_4.0 = extractvalue { [0 x i8]*, i32 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i32 } %2, i32 %_4.1, 1
  ret { [0 x i8]*, i32 } %3
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd568b366a95c7801E"({ i8*, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::dealloc_buffer
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14dealloc_buffer17h0bb5eac3ea6c01caE"({ i8*, i32 }* align 4 dereferenceable(8) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h851c69da2a8083b7E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self) unnamed_addr #0 {
start:
; call <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %0 = call { [0 x i8]*, i32 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17headeffaab90b32a5E"(%"alloc::vec::Vec<u8>"* align 4 dereferenceable(12) %self)
  %_7.0 = extractvalue { [0 x i8]*, i32 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
  %1 = call { [0 x i8]*, i32 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h53a33c0f3be6fbedE"([0 x i8]* nonnull align 1 %_7.0, i32 %_7.1)
  %_4.0 = extractvalue { [0 x i8]*, i32 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i32 } %2, i32 %_4.1, 1
  ret { [0 x i8]*, i32 } %3
}

; <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6a815aacd4e1d742E"([0 x i8]* nonnull align 1 %slice.0, i32 %slice.1) unnamed_addr #0 {
start:
  %0 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %slice.0, 0
  %1 = insertvalue { [0 x i8]*, i32 } %0, i32 %slice.1, 1
  ret { [0 x i8]*, i32 } %1
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17he203a3b61d9abeacE() unnamed_addr #1 {
start:
  %_11 = alloca i32*, align 4
  %_10 = alloca [1 x { i8*, i8* }], align 4
  %_3 = alloca %"core::fmt::Arguments", align 4
  %res = alloca %"alloc::string::String", align 4
  %_1 = alloca %"alloc::string::String", align 4
  %_18 = load [1 x { [0 x i8]*, i32 }]*, [1 x { [0 x i8]*, i32 }]** bitcast (<{ i8*, [0 x i8] }>* @2 to [1 x { [0 x i8]*, i32 }]**), align 4, !nonnull !0
  %_4.0 = bitcast [1 x { [0 x i8]*, i32 }]* %_18 to [0 x { [0 x i8]*, i32 }]*
  %_17 = load i32*, i32** bitcast (<{ i8*, [0 x i8] }>* @4 to i32**), align 4, !nonnull !0
  store i32* %_17, i32** %_11, align 4
  %arg0 = load i32*, i32** %_11, align 4, !nonnull !0
; call core::fmt::ArgumentV1::new
  %0 = call { i8*, i8* } @_ZN4core3fmt10ArgumentV13new17h5d2844e9737b15f2E(i32* noalias readonly align 4 dereferenceable(4) %arg0, i1 (i32*, %"core::fmt::Formatter"*)* nonnull @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hd52729e03edf9fd5E")
  %_14.0 = extractvalue { i8*, i8* } %0, 0
  %_14.1 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [1 x { i8*, i8* }]* %_10 to { i8*, i8* }*
  %2 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 0
  store i8* %_14.0, i8** %2, align 4
  %3 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %1, i32 0, i32 1
  store i8* %_14.1, i8** %3, align 4
  %_7.0 = bitcast [1 x { i8*, i8* }]* %_10 to [0 x { i8*, i8* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h5031e05815c77ef9E(%"core::fmt::Arguments"* noalias nocapture sret dereferenceable(24) %_3, [0 x { [0 x i8]*, i32 }]* noalias nonnull readonly align 4 %_4.0, i32 1, [0 x { i8*, i8* }]* noalias nonnull readonly align 4 %_7.0, i32 1)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h68307293d3fa4b7bE(%"alloc::string::String"* noalias nocapture sret dereferenceable(12) %res, %"core::fmt::Arguments"* noalias nocapture dereferenceable(24) %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::string::String"* %_1 to i8*
  %5 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 12, i1 false)
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17h23b4e5466e5f978cE(%"alloc::string::String"* %_1)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: nounwind
declare void @__rust_dealloc(i8*, i32, i32) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hd52729e03edf9fd5E"(i32* noalias readonly align 4 dereferenceable(4), %"core::fmt::Formatter"* align 4 dereferenceable(36)) unnamed_addr #1

; alloc::fmt::format
; Function Attrs: nounwind
declare void @_ZN5alloc3fmt6format17h68307293d3fa4b7bE(%"alloc::string::String"* noalias nocapture sret dereferenceable(12), %"core::fmt::Arguments"* noalias nocapture dereferenceable(24)) unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #3

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind }

!0 = !{}
!1 = !{i32 1, i32 0}
