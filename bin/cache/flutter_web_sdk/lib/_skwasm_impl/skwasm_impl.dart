// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The web_sdk/sdk_rewriter.dart uses this directive.
// ignore: unnecessary_library_directive
@JS()
library dart._skwasm_impl;

import 'dart:async';
import 'dart:collection';
import 'dart:convert' hide Codec;
import 'dart:developer' as developer;
import 'dart:js_util' as js_util;
import 'dart:_js_annotations';
import 'dart:js_interop' hide JS;
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui_web' as ui_web;
import 'dart:_engine';
import 'dart:_web_unicode';
import 'dart:_web_test_fonts';
import 'dart:_web_locale_keymap' as locale_keymap;
import 'dart:ffi';


part 'skwasm_impl/canvas.dart';
part 'skwasm_impl/image.dart';
part 'skwasm_impl/paint.dart';
part 'skwasm_impl/paragraph.dart';
part 'skwasm_impl/path.dart';
part 'skwasm_impl/path_metrics.dart';
part 'skwasm_impl/picture.dart';
part 'skwasm_impl/raw/raw_canvas.dart';
part 'skwasm_impl/raw/raw_geometry.dart';
part 'skwasm_impl/raw/raw_memory.dart';
part 'skwasm_impl/raw/raw_paint.dart';
part 'skwasm_impl/raw/raw_path.dart';
part 'skwasm_impl/raw/raw_path_metrics.dart';
part 'skwasm_impl/raw/raw_picture.dart';
part 'skwasm_impl/raw/raw_surface.dart';
part 'skwasm_impl/renderer.dart';
part 'skwasm_impl/surface.dart';
part 'skwasm_impl/vertices.dart';
