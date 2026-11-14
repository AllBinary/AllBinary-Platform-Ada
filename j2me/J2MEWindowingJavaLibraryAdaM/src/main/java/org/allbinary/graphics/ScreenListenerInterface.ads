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

with AllBinary_Java;
limited with org.allbinary.graphics.ScreenListenerInterface_Package;
package org.allbinary.graphics.ScreenListenerInterface_Package_References is
   type ScreenListenerInterface_Access is access all org.allbinary.graphics.ScreenListenerInterface_Package.ScreenListenerInterface'Class;
   type ScreenListenerInterface_Access_Array is array (Natural range <>) of ScreenListenerInterface_Access;
   type ScreenListenerInterface_Access_Array_Access is access all ScreenListenerInterface_Access_Array;
   type ScreenListenerInterface_Access_Array_Access_Array is array (Natural range <>) of ScreenListenerInterface_Access_Array_Access;
   type ScreenListenerInterface_Access_Array_Access_Array_Access is access all ScreenListenerInterface_Access_Array_Access_Array;
   type ScreenListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in ScreenListenerInterface_Access_Array_Object'Class then ScreenListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenListenerInterface_Access_Array_Access_Array_Object'Class then ScreenListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ScreenListenerInterface_Package_References;

with org.allbinary.graphics.ScreenListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.ScreenListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ScreenListenerInterface is interface;
   subtype ScreenListenerInterface_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   function Java_Box (Value : ScreenListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenListenerInterface_Package_References.Java_Box;
   function Java_Unbox_ScreenListenerInterface_Access_Array (Value : access Java_Object'Class) return ScreenListenerInterface_Access_Array_Access renames org.allbinary.graphics.ScreenListenerInterface_Package_References.Java_Unbox_ScreenListenerInterface_Access_Array;
   subtype ScreenListenerInterface_Access_Array_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   subtype ScreenListenerInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerInterface_Package_References."=";
   function Java_Box (Value : ScreenListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenListenerInterface_Package_References.Java_Box;
   function Java_Unbox_ScreenListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.ScreenListenerInterface_Package_References.Java_Unbox_ScreenListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ScreenListenerInterface (Value : ScreenListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onFullScreen (This : in out ScreenListenerInterface; isFullScreen : Boolean) is abstract;
   procedure onFullScreenDisplay (This : in out ScreenListenerInterface) is abstract;

end org.allbinary.graphics.ScreenListenerInterface_Package;


