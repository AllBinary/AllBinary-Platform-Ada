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

limited with org.allbinary.input.motion.button.BaseTouchInput_Package;
package org.allbinary.input.motion.button.BaseTouchInput_Package_References is
   type BaseTouchInput_Access is access all org.allbinary.input.motion.button.BaseTouchInput_Package.BaseTouchInput'Class;
   type BaseTouchInput_Access_Array is array (Natural range <>) of BaseTouchInput_Access;
   type BaseTouchInput_Access_Array_Access is access all BaseTouchInput_Access_Array;
   type BaseTouchInput_Access_Array_Access_Array is array (Natural range <>) of BaseTouchInput_Access_Array_Access;
   type BaseTouchInput_Access_Array_Access_Array_Access is access all BaseTouchInput_Access_Array_Access_Array;
end org.allbinary.input.motion.button.BaseTouchInput_Package_References;

with org.allbinary.input.motion.button.BaseTouchInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;

package org.allbinary.input.motion.button.BaseTouchInput_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseTouchInput_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access;
   function "=" (Left, Right : BaseTouchInput_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array;
   function "=" (Left, Right : BaseTouchInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";

   type BaseTouchInput is new Java_Object with record
      commonStrings : CommonStrings_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out BaseTouchInput'Class);
   function Create return BaseTouchInput_Access;
   function getList (This : in out BaseTouchInput) return BasicArrayList_Access;
   function toString (This : in out BaseTouchInput) return Unbounded_String;

end org.allbinary.input.motion.button.BaseTouchInput_Package;


