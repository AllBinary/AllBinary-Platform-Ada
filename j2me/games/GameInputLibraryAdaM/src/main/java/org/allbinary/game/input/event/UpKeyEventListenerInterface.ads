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
limited with org.allbinary.game.input.event.UpKeyEventListenerInterface_Package;
package org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References is
   type UpKeyEventListenerInterface_Access is access all org.allbinary.game.input.event.UpKeyEventListenerInterface_Package.UpKeyEventListenerInterface'Class;
   type UpKeyEventListenerInterface_Access_Array is array (Natural range <>) of UpKeyEventListenerInterface_Access;
   type UpKeyEventListenerInterface_Access_Array_Access is access all UpKeyEventListenerInterface_Access_Array;
   type UpKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of UpKeyEventListenerInterface_Access_Array_Access;
   type UpKeyEventListenerInterface_Access_Array_Access_Array_Access is access all UpKeyEventListenerInterface_Access_Array_Access_Array;
   type UpKeyEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpKeyEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : UpKeyEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpKeyEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpKeyEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpKeyEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in UpKeyEventListenerInterface_Access_Array_Object'Class then UpKeyEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type UpKeyEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpKeyEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpKeyEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpKeyEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpKeyEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpKeyEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpKeyEventListenerInterface_Access_Array_Access_Array_Object'Class then UpKeyEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References;

with org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.game.input.event.UpKeyEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type UpKeyEventListenerInterface is interface and EventListenerInterface;
   subtype UpKeyEventListenerInterface_Access is org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.UpKeyEventListenerInterface_Access;
   function "=" (Left, Right : UpKeyEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References."=";
   subtype UpKeyEventListenerInterface_Access_Array is org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.UpKeyEventListenerInterface_Access_Array;
   function "=" (Left, Right : UpKeyEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References."=";
   subtype UpKeyEventListenerInterface_Access_Array_Access is org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.UpKeyEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : UpKeyEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : UpKeyEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_UpKeyEventListenerInterface_Access_Array (Value : access Java_Object'Class) return UpKeyEventListenerInterface_Access_Array_Access renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.Java_Unbox_UpKeyEventListenerInterface_Access_Array;
   subtype UpKeyEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.UpKeyEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UpKeyEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References."=";
   subtype UpKeyEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.UpKeyEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpKeyEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References."=";
   function Java_Box (Value : UpKeyEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_UpKeyEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return UpKeyEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.UpKeyEventListenerInterface_Package_References.Java_Unbox_UpKeyEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_UpKeyEventListenerInterface (Value : UpKeyEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onUpKeyEvent (This : in out UpKeyEventListenerInterface; keyAsInteger : Integer) is abstract;

end org.allbinary.game.input.event.UpKeyEventListenerInterface_Package;


