(* Copyright (c) 2016-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree. *)

let type_check ~configuration ~environment ~source =
  Analysis.TypeCheck.run ~configuration ~environment ~source


let assert_type_errors = Test.assert_errors ~check:type_check ~debug:true

let assert_strict_type_errors = Test.assert_errors ~check:type_check ~debug:false ~strict:true

let assert_default_type_errors = Test.assert_errors ~check:type_check ~debug:false
