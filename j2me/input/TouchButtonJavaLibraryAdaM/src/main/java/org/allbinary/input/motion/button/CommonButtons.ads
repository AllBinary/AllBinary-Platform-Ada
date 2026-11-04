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

limited with org.allbinary.input.motion.button.CommonButtons_Package;
package org.allbinary.input.motion.button.CommonButtons_Package_References is
   type CommonButtons_Access is access all org.allbinary.input.motion.button.CommonButtons_Package.CommonButtons'Class;
   type CommonButtons_Access_Array is array (Natural range <>) of CommonButtons_Access;
   type CommonButtons_Access_Array_Access is access all CommonButtons_Access_Array;
   type CommonButtons_Access_Array_Access_Array is array (Natural range <>) of CommonButtons_Access_Array_Access;
   type CommonButtons_Access_Array_Access_Array_Access is access all CommonButtons_Access_Array_Access_Array;
end org.allbinary.input.motion.button.CommonButtons_Package_References;

with org.allbinary.input.motion.button.CommonButtons_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.input.motion.button.CommonButtons_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CommonButtons_Access is org.allbinary.input.motion.button.CommonButtons_Package_References.CommonButtons_Access;
   function "=" (Left, Right : CommonButtons_Access) return Boolean renames org.allbinary.input.motion.button.CommonButtons_Package_References."=";
   subtype CommonButtons_Access_Array is org.allbinary.input.motion.button.CommonButtons_Package_References.CommonButtons_Access_Array;
   function "=" (Left, Right : CommonButtons_Access_Array) return Boolean renames org.allbinary.input.motion.button.CommonButtons_Package_References."=";
   subtype CommonButtons_Access_Array_Access is org.allbinary.input.motion.button.CommonButtons_Package_References.CommonButtons_Access_Array_Access;
   function "=" (Left, Right : CommonButtons_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CommonButtons_Package_References."=";
   subtype CommonButtons_Access_Array_Access_Array is org.allbinary.input.motion.button.CommonButtons_Package_References.CommonButtons_Access_Array_Access_Array;
   function "=" (Left, Right : CommonButtons_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.CommonButtons_Package_References."=";
   subtype CommonButtons_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.CommonButtons_Package_References.CommonButtons_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonButtons_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.CommonButtons_Package_References."=";

   type CommonButtons is new Java_Object with record
      STANDARD_BUTTON_SIZE : Integer;
      NORMAL_BUTTON : Rectangle_Access;
      LARGE_BUTTON : Rectangle_Access;
   end record;
   instance : CommonButtons_Access;

   procedure Initialize (This : in out CommonButtons'Class);
   function Create return CommonButtons_Access;
   function getInstance return CommonButtons_Access;

end org.allbinary.input.motion.button.CommonButtons_Package;


