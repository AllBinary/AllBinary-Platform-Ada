-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.device.NullGL10_Package;
package org.allbinary.device.NullGL10_Package_References is
   type NullGL10_Access is access all org.allbinary.device.NullGL10_Package.NullGL10'Class;
   type NullGL10_Access_Array is array (Natural range <>) of NullGL10_Access;
   type NullGL10_Access_Array_Access is access all NullGL10_Access_Array;
   type NullGL10_Access_Array_Access_Array is array (Natural range <>) of NullGL10_Access_Array_Access;
   type NullGL10_Access_Array_Access_Array_Access is access all NullGL10_Access_Array_Access_Array;
end org.allbinary.device.NullGL10_Package_References;

with org.allbinary.device.NullGL10_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;

package org.allbinary.device.NullGL10_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullGL10_Access is org.allbinary.device.NullGL10_Package_References.NullGL10_Access;
   function "=" (Left, Right : NullGL10_Access) return Boolean renames org.allbinary.device.NullGL10_Package_References."=";
   subtype NullGL10_Access_Array is org.allbinary.device.NullGL10_Package_References.NullGL10_Access_Array;
   function "=" (Left, Right : NullGL10_Access_Array) return Boolean renames org.allbinary.device.NullGL10_Package_References."=";
   subtype NullGL10_Access_Array_Access is org.allbinary.device.NullGL10_Package_References.NullGL10_Access_Array_Access;
   function "=" (Left, Right : NullGL10_Access_Array_Access) return Boolean renames org.allbinary.device.NullGL10_Package_References."=";
   subtype NullGL10_Access_Array_Access_Array is org.allbinary.device.NullGL10_Package_References.NullGL10_Access_Array_Access_Array;
   function "=" (Left, Right : NullGL10_Access_Array_Access_Array) return Boolean renames org.allbinary.device.NullGL10_Package_References."=";
   subtype NullGL10_Access_Array_Access_Array_Access is org.allbinary.device.NullGL10_Package_References.NullGL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullGL10_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.NullGL10_Package_References."=";

   type NullGL10 is new Java_Object and GL10 with null record;
   NULL_GL10 : NullGL10_Access;

   procedure Initialize (This : in out NullGL10'Class);
   function Create return NullGL10_Access;

end org.allbinary.device.NullGL10_Package;


