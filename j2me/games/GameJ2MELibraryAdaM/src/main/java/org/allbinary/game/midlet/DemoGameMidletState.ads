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
limited with org.allbinary.game.midlet.DemoGameMidletState_Package;
package org.allbinary.game.midlet.DemoGameMidletState_Package_References is
   type DemoGameMidletState_Access is access all org.allbinary.game.midlet.DemoGameMidletState_Package.DemoGameMidletState'Class;
   type DemoGameMidletState_Access_Array is array (Natural range <>) of DemoGameMidletState_Access;
   type DemoGameMidletState_Access_Array_Access is access all DemoGameMidletState_Access_Array;
   type DemoGameMidletState_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletState_Access_Array_Access;
   type DemoGameMidletState_Access_Array_Access_Array_Access is access all DemoGameMidletState_Access_Array_Access_Array;
   type DemoGameMidletState_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletState_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletState_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletState_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletState_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletState_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletState_Access_Array_Object'Class then DemoGameMidletState_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameMidletState_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletState_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletState_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletState_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletState_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletState_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletState_Access_Array_Access_Array_Object'Class then DemoGameMidletState_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.DemoGameMidletState_Package_References;

with org.allbinary.game.midlet.DemoGameMidletState_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.midlet.DemoGameMidletState_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameMidletState_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access;
   function "=" (Left, Right : DemoGameMidletState_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array;
   function "=" (Left, Right : DemoGameMidletState_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   function Java_Box (Value : DemoGameMidletState_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletState_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletState_Access_Array (Value : access Java_Object'Class) return DemoGameMidletState_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletState_Package_References.Java_Unbox_DemoGameMidletState_Access_Array;
   subtype DemoGameMidletState_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   subtype DemoGameMidletState_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletState_Package_References."=";
   function Java_Box (Value : DemoGameMidletState_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletState_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletState_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameMidletState_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletState_Package_References.Java_Unbox_DemoGameMidletState_Access_Array_Access_Array;

   type DemoGameMidletState is new Java_Object with null record;

   procedure Initialize (This : in out DemoGameMidletState'Class);
   function Create return DemoGameMidletState_Access;

end org.allbinary.game.midlet.DemoGameMidletState_Package;


