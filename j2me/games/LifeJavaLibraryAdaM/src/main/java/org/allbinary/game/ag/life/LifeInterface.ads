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
limited with org.allbinary.game.ag.life.LifeInterface_Package;
package org.allbinary.game.ag.life.LifeInterface_Package_References is
   type LifeInterface_Access is access all org.allbinary.game.ag.life.LifeInterface_Package.LifeInterface'Class;
   type LifeInterface_Access_Array is array (Natural range <>) of LifeInterface_Access;
   type LifeInterface_Access_Array_Access is access all LifeInterface_Access_Array;
   type LifeInterface_Access_Array_Access_Array is array (Natural range <>) of LifeInterface_Access_Array_Access;
   type LifeInterface_Access_Array_Access_Array_Access is access all LifeInterface_Access_Array_Access_Array;
   type LifeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeInterface_Access_Array_Access is (if Value /= null and then Value.all in LifeInterface_Access_Array_Object'Class then LifeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type LifeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LifeInterface_Access_Array_Access_Array_Object'Class then LifeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.life.LifeInterface_Package_References;

with org.allbinary.game.ag.life.LifeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.life.LifeInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type LifeInterface is interface;
   subtype LifeInterface_Access is org.allbinary.game.ag.life.LifeInterface_Package_References.LifeInterface_Access;
   function "=" (Left, Right : LifeInterface_Access) return Boolean renames org.allbinary.game.ag.life.LifeInterface_Package_References."=";
   subtype LifeInterface_Access_Array is org.allbinary.game.ag.life.LifeInterface_Package_References.LifeInterface_Access_Array;
   function "=" (Left, Right : LifeInterface_Access_Array) return Boolean renames org.allbinary.game.ag.life.LifeInterface_Package_References."=";
   subtype LifeInterface_Access_Array_Access is org.allbinary.game.ag.life.LifeInterface_Package_References.LifeInterface_Access_Array_Access;
   function "=" (Left, Right : LifeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.LifeInterface_Package_References."=";
   function Java_Box (Value : LifeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.LifeInterface_Package_References.Java_Box;
   function Java_Unbox_LifeInterface_Access_Array (Value : access Java_Object'Class) return LifeInterface_Access_Array_Access renames org.allbinary.game.ag.life.LifeInterface_Package_References.Java_Unbox_LifeInterface_Access_Array;
   subtype LifeInterface_Access_Array_Access_Array is org.allbinary.game.ag.life.LifeInterface_Package_References.LifeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LifeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.life.LifeInterface_Package_References."=";
   subtype LifeInterface_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.LifeInterface_Package_References.LifeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.LifeInterface_Package_References."=";
   function Java_Box (Value : LifeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.LifeInterface_Package_References.Java_Box;
   function Java_Unbox_LifeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return LifeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.ag.life.LifeInterface_Package_References.Java_Unbox_LifeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_LifeInterface (Value : LifeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function get (This : in out LifeInterface) return Short_Integer is abstract;
   procedure set (This : in out LifeInterface; lives : Short_Integer) is abstract;
   procedure reset (This : in out LifeInterface) is abstract;
   procedure add (This : in out LifeInterface; lives : Short_Integer) is abstract;
   procedure deaths (This : in out LifeInterface; lives : Short_Integer) is abstract;
   function getMaxlives (This : in out LifeInterface) return Short_Integer is abstract;
   function isAlive (This : in out LifeInterface) return Boolean is abstract;

end org.allbinary.game.ag.life.LifeInterface_Package;


