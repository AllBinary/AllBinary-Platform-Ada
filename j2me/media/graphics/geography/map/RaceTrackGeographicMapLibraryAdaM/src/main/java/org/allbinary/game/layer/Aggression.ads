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
limited with org.allbinary.game.layer.Aggression_Package;
package org.allbinary.game.layer.Aggression_Package_References is
   type Aggression_Access is access all org.allbinary.game.layer.Aggression_Package.Aggression'Class;
   type Aggression_Access_Array is array (Natural range <>) of Aggression_Access;
   type Aggression_Access_Array_Access is access all Aggression_Access_Array;
   type Aggression_Access_Array_Access_Array is array (Natural range <>) of Aggression_Access_Array_Access;
   type Aggression_Access_Array_Access_Array_Access is access all Aggression_Access_Array_Access_Array;
   type Aggression_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Aggression_Access_Array_Access;
   end record;
   function Java_Box (Value : Aggression_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Aggression_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Aggression_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Aggression_Access_Array_Access is (if Value /= null and then Value.all in Aggression_Access_Array_Object'Class then Aggression_Access_Array_Object'Class (Value.all).Value else null);
   type Aggression_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Aggression_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Aggression_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Aggression_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Aggression_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Aggression_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Aggression_Access_Array_Access_Array_Object'Class then Aggression_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.Aggression_Package_References;

with org.allbinary.game.layer.Aggression_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.Aggression_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Aggression_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access;
   function "=" (Left, Right : Aggression_Access) return Boolean renames org.allbinary.game.layer.Aggression_Package_References."=";
   subtype Aggression_Access_Array is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array;
   function "=" (Left, Right : Aggression_Access_Array) return Boolean renames org.allbinary.game.layer.Aggression_Package_References."=";
   subtype Aggression_Access_Array_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access;
   function "=" (Left, Right : Aggression_Access_Array_Access) return Boolean renames org.allbinary.game.layer.Aggression_Package_References."=";
   function Java_Box (Value : Aggression_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.Aggression_Package_References.Java_Box;
   function Java_Unbox_Aggression_Access_Array (Value : access Java_Object'Class) return Aggression_Access_Array_Access renames org.allbinary.game.layer.Aggression_Package_References.Java_Unbox_Aggression_Access_Array;
   subtype Aggression_Access_Array_Access_Array is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access_Array;
   function "=" (Left, Right : Aggression_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.Aggression_Package_References."=";
   subtype Aggression_Access_Array_Access_Array_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Aggression_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.Aggression_Package_References."=";
   function Java_Box (Value : Aggression_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.Aggression_Package_References.Java_Box;
   function Java_Unbox_Aggression_Access_Array_Access_Array (Value : access Java_Object'Class) return Aggression_Access_Array_Access_Array_Access renames org.allbinary.game.layer.Aggression_Package_References.Java_Unbox_Aggression_Access_Array_Access_Array;

   type Aggression is new Java_Object with record
      ram : Integer;
      projectile : Integer;
      drops : Integer;
   end record;

   procedure Initialize (This : in out Aggression'Class; ram : Integer; projectile : Integer; drops : Integer);
   function Create (ram : Integer; projectile : Integer; drops : Integer) return Aggression_Access;
   function getRam (This : in out Aggression) return Integer;
   procedure setRam (This : in out Aggression; ram : Integer);
   function getProjectile (This : in out Aggression) return Integer;
   procedure setProjectile (This : in out Aggression; projectile : Integer);
   function getDrops (This : in out Aggression) return Integer;
   procedure setDrops (This : in out Aggression; drops : Integer);

end org.allbinary.game.layer.Aggression_Package;


