(* This file is part of Learn-OCaml.
 *
 * Copyright (C) 2016 OCamlPro.
 *
 * Learn-OCaml is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * Learn-OCaml is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>. *)

type 'a storage_key

val store : 'a storage_key -> 'a -> unit

val retrieve : 'a storage_key -> 'a

val delete : 'a storage_key -> unit

val cached_exercise : string -> Exercise.t storage_key

val exercise_state : string -> Client_index.exercise_state storage_key

val exercise_toplevel_history : string -> string list storage_key

val toplevel_history : string list storage_key

val client_index : Client_index.client_index storage_key