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
limited with org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package;
package org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References is
   type TimeFiredInterface_Access is access all org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package.TimeFiredInterface'Class;
   type TimeFiredInterface_Access_Array is array (Natural range <>) of TimeFiredInterface_Access;
   type TimeFiredInterface_Access_Array_Access is access all TimeFiredInterface_Access_Array;
   type TimeFiredInterface_Access_Array_Access_Array is array (Natural range <>) of TimeFiredInterface_Access_Array_Access;
   type TimeFiredInterface_Access_Array_Access_Array_Access is access all TimeFiredInterface_Access_Array_Access_Array;
   type TimeFiredInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeFiredInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeFiredInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeFiredInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeFiredInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeFiredInterface_Access_Array_Access is (if Value /= null and then Value.all in TimeFiredInterface_Access_Array_Object'Class then TimeFiredInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TimeFiredInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeFiredInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeFiredInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeFiredInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeFiredInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeFiredInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeFiredInterface_Access_Array_Access_Array_Object'Class then TimeFiredInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References;

with org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type TimeFiredInterface is interface;
   subtype TimeFiredInterface_Access is org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.TimeFiredInterface_Access;
   function "=" (Left, Right : TimeFiredInterface_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References."=";
   subtype TimeFiredInterface_Access_Array is org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.TimeFiredInterface_Access_Array;
   function "=" (Left, Right : TimeFiredInterface_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References."=";
   subtype TimeFiredInterface_Access_Array_Access is org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.TimeFiredInterface_Access_Array_Access;
   function "=" (Left, Right : TimeFiredInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References."=";
   function Java_Box (Value : TimeFiredInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.Java_Box;
   function Java_Unbox_TimeFiredInterface_Access_Array (Value : access Java_Object'Class) return TimeFiredInterface_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.Java_Unbox_TimeFiredInterface_Access_Array;
   subtype TimeFiredInterface_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.TimeFiredInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TimeFiredInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References."=";
   subtype TimeFiredInterface_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.TimeFiredInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeFiredInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References."=";
   function Java_Box (Value : TimeFiredInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.Java_Box;
   function Java_Unbox_TimeFiredInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeFiredInterface_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package_References.Java_Unbox_TimeFiredInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TimeFiredInterface (Value : TimeFiredInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLastFireTime (This : in out TimeFiredInterface) return Long_Long_Integer is abstract;

end org.allbinary.game.ag.ai.scroller.TimeFiredInterface_Package;


