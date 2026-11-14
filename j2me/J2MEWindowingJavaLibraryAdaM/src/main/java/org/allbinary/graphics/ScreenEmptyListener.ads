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
limited with org.allbinary.graphics.ScreenEmptyListener_Package;
package org.allbinary.graphics.ScreenEmptyListener_Package_References is
   type ScreenEmptyListener_Access is access all org.allbinary.graphics.ScreenEmptyListener_Package.ScreenEmptyListener'Class;
   type ScreenEmptyListener_Access_Array is array (Natural range <>) of ScreenEmptyListener_Access;
   type ScreenEmptyListener_Access_Array_Access is access all ScreenEmptyListener_Access_Array;
   type ScreenEmptyListener_Access_Array_Access_Array is array (Natural range <>) of ScreenEmptyListener_Access_Array_Access;
   type ScreenEmptyListener_Access_Array_Access_Array_Access is access all ScreenEmptyListener_Access_Array_Access_Array;
   type ScreenEmptyListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenEmptyListener_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenEmptyListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenEmptyListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenEmptyListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenEmptyListener_Access_Array_Access is (if Value /= null and then Value.all in ScreenEmptyListener_Access_Array_Object'Class then ScreenEmptyListener_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenEmptyListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenEmptyListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenEmptyListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenEmptyListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenEmptyListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenEmptyListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenEmptyListener_Access_Array_Access_Array_Object'Class then ScreenEmptyListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ScreenEmptyListener_Package_References;

with org.allbinary.graphics.ScreenEmptyListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.ScreenListenerInterface_Package; use org.allbinary.graphics.ScreenListenerInterface_Package;

package org.allbinary.graphics.ScreenEmptyListener_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScreenEmptyListener_Access is org.allbinary.graphics.ScreenEmptyListener_Package_References.ScreenEmptyListener_Access;
   function "=" (Left, Right : ScreenEmptyListener_Access) return Boolean renames org.allbinary.graphics.ScreenEmptyListener_Package_References."=";
   subtype ScreenEmptyListener_Access_Array is org.allbinary.graphics.ScreenEmptyListener_Package_References.ScreenEmptyListener_Access_Array;
   function "=" (Left, Right : ScreenEmptyListener_Access_Array) return Boolean renames org.allbinary.graphics.ScreenEmptyListener_Package_References."=";
   subtype ScreenEmptyListener_Access_Array_Access is org.allbinary.graphics.ScreenEmptyListener_Package_References.ScreenEmptyListener_Access_Array_Access;
   function "=" (Left, Right : ScreenEmptyListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenEmptyListener_Package_References."=";
   function Java_Box (Value : ScreenEmptyListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenEmptyListener_Package_References.Java_Box;
   function Java_Unbox_ScreenEmptyListener_Access_Array (Value : access Java_Object'Class) return ScreenEmptyListener_Access_Array_Access renames org.allbinary.graphics.ScreenEmptyListener_Package_References.Java_Unbox_ScreenEmptyListener_Access_Array;
   subtype ScreenEmptyListener_Access_Array_Access_Array is org.allbinary.graphics.ScreenEmptyListener_Package_References.ScreenEmptyListener_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenEmptyListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenEmptyListener_Package_References."=";
   subtype ScreenEmptyListener_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenEmptyListener_Package_References.ScreenEmptyListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenEmptyListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenEmptyListener_Package_References."=";
   function Java_Box (Value : ScreenEmptyListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenEmptyListener_Package_References.Java_Box;
   function Java_Unbox_ScreenEmptyListener_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenEmptyListener_Access_Array_Access_Array_Access renames org.allbinary.graphics.ScreenEmptyListener_Package_References.Java_Unbox_ScreenEmptyListener_Access_Array_Access_Array;

   type ScreenEmptyListener is new Java_Object and ScreenListenerInterface with null record;

   procedure Initialize (This : in out ScreenEmptyListener'Class);
   function Create return ScreenEmptyListener_Access;
   procedure onFullScreen (This : in out ScreenEmptyListener; isFullScreen : Boolean);
   procedure onFullScreenDisplay (This : in out ScreenEmptyListener);

end org.allbinary.graphics.ScreenEmptyListener_Package;


