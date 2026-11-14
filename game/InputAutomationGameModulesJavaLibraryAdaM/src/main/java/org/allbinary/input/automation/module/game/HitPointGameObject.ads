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
limited with org.allbinary.input.automation.module.game.HitPointGameObject_Package;
package org.allbinary.input.automation.module.game.HitPointGameObject_Package_References is
   type HitPointGameObject_Access is access all org.allbinary.input.automation.module.game.HitPointGameObject_Package.HitPointGameObject'Class;
   type HitPointGameObject_Access_Array is array (Natural range <>) of HitPointGameObject_Access;
   type HitPointGameObject_Access_Array_Access is access all HitPointGameObject_Access_Array;
   type HitPointGameObject_Access_Array_Access_Array is array (Natural range <>) of HitPointGameObject_Access_Array_Access;
   type HitPointGameObject_Access_Array_Access_Array_Access is access all HitPointGameObject_Access_Array_Access_Array;
   type HitPointGameObject_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HitPointGameObject_Access_Array_Access;
   end record;
   function Java_Box (Value : HitPointGameObject_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HitPointGameObject_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HitPointGameObject_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HitPointGameObject_Access_Array_Access is (if Value /= null and then Value.all in HitPointGameObject_Access_Array_Object'Class then HitPointGameObject_Access_Array_Object'Class (Value.all).Value else null);
   type HitPointGameObject_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HitPointGameObject_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HitPointGameObject_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HitPointGameObject_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HitPointGameObject_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HitPointGameObject_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HitPointGameObject_Access_Array_Access_Array_Object'Class then HitPointGameObject_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.HitPointGameObject_Package_References;

with org.allbinary.input.automation.module.game.HitPointGameObject_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.input.automation.module.game.MeteredGameObject_Package; use org.allbinary.input.automation.module.game.MeteredGameObject_Package;
with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package; use org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.HitPointGameObject_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HitPointGameObject_Access is org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.HitPointGameObject_Access;
   function "=" (Left, Right : HitPointGameObject_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References."=";
   subtype HitPointGameObject_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.HitPointGameObject_Access_Array;
   function "=" (Left, Right : HitPointGameObject_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References."=";
   subtype HitPointGameObject_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.HitPointGameObject_Access_Array_Access;
   function "=" (Left, Right : HitPointGameObject_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References."=";
   function Java_Box (Value : HitPointGameObject_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.Java_Box;
   function Java_Unbox_HitPointGameObject_Access_Array (Value : access Java_Object'Class) return HitPointGameObject_Access_Array_Access renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.Java_Unbox_HitPointGameObject_Access_Array;
   subtype HitPointGameObject_Access_Array_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.HitPointGameObject_Access_Array_Access_Array;
   function "=" (Left, Right : HitPointGameObject_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References."=";
   subtype HitPointGameObject_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.HitPointGameObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HitPointGameObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References."=";
   function Java_Box (Value : HitPointGameObject_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.Java_Box;
   function Java_Unbox_HitPointGameObject_Access_Array_Access_Array (Value : access Java_Object'Class) return HitPointGameObject_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.HitPointGameObject_Package_References.Java_Unbox_HitPointGameObject_Access_Array_Access_Array;

   type HitPointGameObject is new MeteredGameObject and HitPointGameObjectInterface with record
      damaged : Boolean;
      closeDeath : Boolean;
      HP_LABEL : Unbounded_String;
      IS_DAMAGED_LABEL : Unbounded_String;
      IS_CLOSE_DEATH_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out HitPointGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer);
   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return HitPointGameObject_Access;
   function isMoreThan (This : in out HitPointGameObject; aFloat : Float) return Boolean;
   procedure isMoreThan (This : in out HitPointGameObject; aFloat : Float);
   function isCloseDeath (This : in out HitPointGameObject) return Boolean;
   procedure setCloseDeath (This : in out HitPointGameObject; closeDeath : Boolean);
   function isDamaged (This : in out HitPointGameObject) return Boolean;
   procedure setDamaged (This : in out HitPointGameObject; damaged : Boolean);
   function toString (This : in out HitPointGameObject) return Unbounded_String;

end org.allbinary.input.automation.module.game.HitPointGameObject_Package;


