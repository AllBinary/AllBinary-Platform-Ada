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
limited with org.allbinary.graphics.ScreenListenerHandler_Package;
package org.allbinary.graphics.ScreenListenerHandler_Package_References is
   type ScreenListenerHandler_Access is access all org.allbinary.graphics.ScreenListenerHandler_Package.ScreenListenerHandler'Class;
   type ScreenListenerHandler_Access_Array is array (Natural range <>) of ScreenListenerHandler_Access;
   type ScreenListenerHandler_Access_Array_Access is access all ScreenListenerHandler_Access_Array;
   type ScreenListenerHandler_Access_Array_Access_Array is array (Natural range <>) of ScreenListenerHandler_Access_Array_Access;
   type ScreenListenerHandler_Access_Array_Access_Array_Access is access all ScreenListenerHandler_Access_Array_Access_Array;
   type ScreenListenerHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenListenerHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenListenerHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenListenerHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenListenerHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenListenerHandler_Access_Array_Access is (if Value /= null and then Value.all in ScreenListenerHandler_Access_Array_Object'Class then ScreenListenerHandler_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenListenerHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenListenerHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenListenerHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenListenerHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenListenerHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenListenerHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenListenerHandler_Access_Array_Access_Array_Object'Class then ScreenListenerHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ScreenListenerHandler_Package_References;

with org.allbinary.graphics.ScreenListenerHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.ScreenListenerInterface_Package;
with org.allbinary.graphics.ScreenListenerInterface_Package_References;

package org.allbinary.graphics.ScreenListenerHandler_Package is

   package Reference_Types is
   subtype ScreenListenerInterface_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access;
   use type ScreenListenerInterface_Access;
   subtype ScreenListenerInterface_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array;
   use type ScreenListenerInterface_Access_Array;
   subtype ScreenListenerInterface_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access;
   use type ScreenListenerInterface_Access_Array_Access;
   subtype ScreenListenerInterface_Access_Array_Access_Array is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array;
   use type ScreenListenerInterface_Access_Array_Access_Array;
   subtype ScreenListenerInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenListenerInterface_Package_References.ScreenListenerInterface_Access_Array_Access_Array_Access;
   use type ScreenListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenListenerHandler_Access is org.allbinary.graphics.ScreenListenerHandler_Package_References.ScreenListenerHandler_Access;
   function "=" (Left, Right : ScreenListenerHandler_Access) return Boolean renames org.allbinary.graphics.ScreenListenerHandler_Package_References."=";
   subtype ScreenListenerHandler_Access_Array is org.allbinary.graphics.ScreenListenerHandler_Package_References.ScreenListenerHandler_Access_Array;
   function "=" (Left, Right : ScreenListenerHandler_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerHandler_Package_References."=";
   subtype ScreenListenerHandler_Access_Array_Access is org.allbinary.graphics.ScreenListenerHandler_Package_References.ScreenListenerHandler_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerHandler_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerHandler_Package_References."=";
   function Java_Box (Value : ScreenListenerHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenListenerHandler_Package_References.Java_Box;
   function Java_Unbox_ScreenListenerHandler_Access_Array (Value : access Java_Object'Class) return ScreenListenerHandler_Access_Array_Access renames org.allbinary.graphics.ScreenListenerHandler_Package_References.Java_Unbox_ScreenListenerHandler_Access_Array;
   subtype ScreenListenerHandler_Access_Array_Access_Array is org.allbinary.graphics.ScreenListenerHandler_Package_References.ScreenListenerHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenListenerHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenListenerHandler_Package_References."=";
   subtype ScreenListenerHandler_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenListenerHandler_Package_References.ScreenListenerHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenListenerHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenListenerHandler_Package_References."=";
   function Java_Box (Value : ScreenListenerHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenListenerHandler_Package_References.Java_Box;
   function Java_Unbox_ScreenListenerHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenListenerHandler_Access_Array_Access_Array_Access renames org.allbinary.graphics.ScreenListenerHandler_Package_References.Java_Unbox_ScreenListenerHandler_Access_Array_Access_Array;

   type ScreenListenerHandler is new Java_Object with record
      screenListenerInterface : ScreenListenerInterface_Access;
   end record;
   instance : ScreenListenerHandler_Access;

   procedure Initialize (This : in out ScreenListenerHandler'Class);
   function Create return ScreenListenerHandler_Access;
   function getInstance return ScreenListenerHandler_Access;
   procedure setListener (This : in out ScreenListenerHandler; screenListenerInterface_Param : access ScreenListenerInterface_Package.ScreenListenerInterface'Class);
   procedure fireWithState (This : in out ScreenListenerHandler; isFullScreen : Boolean);
   procedure fire (This : in out ScreenListenerHandler);

end org.allbinary.graphics.ScreenListenerHandler_Package;


