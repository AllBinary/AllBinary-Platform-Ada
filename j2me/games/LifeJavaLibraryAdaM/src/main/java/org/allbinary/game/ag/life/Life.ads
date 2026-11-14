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
limited with org.allbinary.game.ag.life.Life_Package;
package org.allbinary.game.ag.life.Life_Package_References is
   type Life_Access is access all org.allbinary.game.ag.life.Life_Package.Life'Class;
   type Life_Access_Array is array (Natural range <>) of Life_Access;
   type Life_Access_Array_Access is access all Life_Access_Array;
   type Life_Access_Array_Access_Array is array (Natural range <>) of Life_Access_Array_Access;
   type Life_Access_Array_Access_Array_Access is access all Life_Access_Array_Access_Array;
   type Life_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Life_Access_Array_Access;
   end record;
   function Java_Box (Value : Life_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Life_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Life_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Life_Access_Array_Access is (if Value /= null and then Value.all in Life_Access_Array_Object'Class then Life_Access_Array_Object'Class (Value.all).Value else null);
   type Life_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Life_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Life_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Life_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Life_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Life_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Life_Access_Array_Access_Array_Object'Class then Life_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.life.Life_Package_References;

with org.allbinary.game.ag.life.Life_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ag.life.LifeInterface_Package; use org.allbinary.game.ag.life.LifeInterface_Package;

package org.allbinary.game.ag.life.Life_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Life_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access;
   function "=" (Left, Right : Life_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array;
   function "=" (Left, Right : Life_Access_Array) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access;
   function "=" (Left, Right : Life_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   function Java_Box (Value : Life_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.Life_Package_References.Java_Box;
   function Java_Unbox_Life_Access_Array (Value : access Java_Object'Class) return Life_Access_Array_Access renames org.allbinary.game.ag.life.Life_Package_References.Java_Unbox_Life_Access_Array;
   subtype Life_Access_Array_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array;
   function "=" (Left, Right : Life_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   subtype Life_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Life_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.Life_Package_References."=";
   function Java_Box (Value : Life_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.Life_Package_References.Java_Box;
   function Java_Unbox_Life_Access_Array_Access_Array (Value : access Java_Object'Class) return Life_Access_Array_Access_Array_Access renames org.allbinary.game.ag.life.Life_Package_References.Java_Unbox_Life_Access_Array_Access_Array;

   type Life is new Java_Object and LifeInterface with record
      lives : Short_Integer;
      startLives : Short_Integer;
      maxlives : Short_Integer;
   end record;
   NO_LIFE : Life_Access;

   procedure Initialize (This : in out Life'Class; lives : Short_Integer; maxlives : Short_Integer);
   function Create (lives : Short_Integer; maxlives : Short_Integer) return Life_Access;
   function createLife return Life_Access;
   function get (This : in out Life) return Short_Integer;
   procedure set (This : in out Life; lives : Short_Integer);
   procedure reset (This : in out Life);
   procedure add (This : in out Life; lives : Short_Integer);
   function isAlive (This : in out Life) return Boolean;
   function getMaxlives (This : in out Life) return Short_Integer;
   function reachedLimit (This : in out Life) return Boolean;
   procedure deaths (This : in out Life; lives : Short_Integer);
   function getStartLives (This : in out Life) return Short_Integer;
   procedure setStartLives (This : in out Life; startLives : Short_Integer);

end org.allbinary.game.ag.life.Life_Package;


