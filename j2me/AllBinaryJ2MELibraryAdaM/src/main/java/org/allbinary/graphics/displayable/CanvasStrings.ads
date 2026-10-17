-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.graphics.displayable.CanvasStrings_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type CanvasStrings is tagged;
   type CanvasStrings_Access is access all CanvasStrings'Class;
   type CanvasStrings_Access_Array is array (Natural range <>) of CanvasStrings_Access;
   type CanvasStrings_Access_Array_Access is access all CanvasStrings_Access_Array;

   type CanvasStrings is new Java_Object with record
      CONSTRUCTOR : Unbounded_String;
      PAUSE : Unbounded_String;
      UN_PAUSE : Unbounded_String;
      SET_FULL_SCREEN_MODE : Unbounded_String;
      SIZE_CHANGED : Unbounded_String;
      SCALED_IMAGES : Unbounded_String;
      PAINT : Unbounded_String;
      ON_DISPLAY_CHANGE_EVENT : Unbounded_String;
      UPDATE_MEASUREMENT : Unbounded_String;
      FD_WIDTH : Unbounded_String;
      FD_HEIGHT : Unbounded_String;
      EMPTY_CHILD_NAME_LIST : BasicArrayList_Access;
      ABOUT : Unbounded_String;
      OPTIONS : Unbounded_String;
      FONT_ATLAS : Unbounded_String;
      OBJ_MODEL : Unbounded_String;
      MD2_MODEL : Unbounded_String;
      U_PNG : Unbounded_String;
   end record;
   instance : CanvasStrings_Access;

   procedure Initialize (This : in out CanvasStrings'Class);
   function Create return CanvasStrings_Access;
   function getInstance return CanvasStrings_Access;
   procedure getInstance;

end org.allbinary.graphics.displayable.CanvasStrings_Package;


