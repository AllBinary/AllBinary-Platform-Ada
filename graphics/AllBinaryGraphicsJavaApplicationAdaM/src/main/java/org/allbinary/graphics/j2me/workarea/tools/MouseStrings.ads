--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package is

   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type MouseStrings is tagged;
   type MouseStrings_Access is access all MouseStrings'Class;
   type MouseStrings_Access_Array is array (Natural range <>) of MouseStrings_Access;
   type MouseStrings_Access_Array_Access is access all MouseStrings_Access_Array;

   type MouseStrings is new Java_Object with record
      MOUSE_PRESSED : Unbounded_String;
      MOUSE_RELEASED : Unbounded_String;
      MOUSE_CLICKED : Unbounded_String;
      MOUSE_DRAGGED : Unbounded_String;
      MOUSE_MOVED : Unbounded_String;
      MOUSE_PRESSED_LABEL : Unbounded_String;
      MOUSE_RELEASED_LABEL : Unbounded_String;
      MOUSE_CLICKED_LABEL : Unbounded_String;
      MOUSE_DRAGGED_LABEL : Unbounded_String;
      MOUSE_MOVED_LABEL : Unbounded_String;
   end record;
   instance : MouseStrings_Access;

   procedure Initialize (This : in out MouseStrings'Class);
   function Create return MouseStrings_Access;
   function getInstance return MouseStrings_Access;
   procedure getInstance;

end org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;


