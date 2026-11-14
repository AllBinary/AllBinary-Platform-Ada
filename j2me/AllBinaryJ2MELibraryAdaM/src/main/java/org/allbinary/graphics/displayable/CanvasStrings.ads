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

with AllBinary_Java;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
package org.allbinary.graphics.displayable.CanvasStrings_Package_References is
   type CanvasStrings_Access is access all org.allbinary.graphics.displayable.CanvasStrings_Package.CanvasStrings'Class;
   type CanvasStrings_Access_Array is array (Natural range <>) of CanvasStrings_Access;
   type CanvasStrings_Access_Array_Access is access all CanvasStrings_Access_Array;
   type CanvasStrings_Access_Array_Access_Array is array (Natural range <>) of CanvasStrings_Access_Array_Access;
   type CanvasStrings_Access_Array_Access_Array_Access is access all CanvasStrings_Access_Array_Access_Array;
   type CanvasStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasStrings_Access_Array_Access is (if Value /= null and then Value.all in CanvasStrings_Access_Array_Object'Class then CanvasStrings_Access_Array_Object'Class (Value.all).Value else null);
   type CanvasStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CanvasStrings_Access_Array_Access_Array_Object'Class then CanvasStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.CanvasStrings_Package_References;

with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.displayable.CanvasStrings_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   function "=" (Left, Right : CanvasStrings_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   function Java_Box (Value : CanvasStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.CanvasStrings_Package_References.Java_Box;
   function Java_Unbox_CanvasStrings_Access_Array (Value : access Java_Object'Class) return CanvasStrings_Access_Array_Access renames org.allbinary.graphics.displayable.CanvasStrings_Package_References.Java_Unbox_CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   function Java_Box (Value : CanvasStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.CanvasStrings_Package_References.Java_Box;
   function Java_Unbox_CanvasStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return CanvasStrings_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.CanvasStrings_Package_References.Java_Unbox_CanvasStrings_Access_Array_Access_Array;

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

end org.allbinary.graphics.displayable.CanvasStrings_Package;


