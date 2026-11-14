-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
limited with org.allbinary.game.input.form.PlayersSingletonFactory_Package;
package org.allbinary.game.input.form.PlayersSingletonFactory_Package_References is
   type PlayersSingletonFactory_Access is access all org.allbinary.game.input.form.PlayersSingletonFactory_Package.PlayersSingletonFactory'Class;
   type PlayersSingletonFactory_Access_Array is array (Natural range <>) of PlayersSingletonFactory_Access;
   type PlayersSingletonFactory_Access_Array_Access is access all PlayersSingletonFactory_Access_Array;
   type PlayersSingletonFactory_Access_Array_Access_Array is array (Natural range <>) of PlayersSingletonFactory_Access_Array_Access;
   type PlayersSingletonFactory_Access_Array_Access_Array_Access is access all PlayersSingletonFactory_Access_Array_Access_Array;
   type PlayersSingletonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayersSingletonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayersSingletonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayersSingletonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayersSingletonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayersSingletonFactory_Access_Array_Access is (if Value /= null and then Value.all in PlayersSingletonFactory_Access_Array_Object'Class then PlayersSingletonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlayersSingletonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayersSingletonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayersSingletonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayersSingletonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayersSingletonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayersSingletonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayersSingletonFactory_Access_Array_Access_Array_Object'Class then PlayersSingletonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.form.PlayersSingletonFactory_Package_References;

with org.allbinary.game.input.form.PlayersSingletonFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.form.PlayersSingletonFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PlayersSingletonFactory_Access is org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.PlayersSingletonFactory_Access;
   function "=" (Left, Right : PlayersSingletonFactory_Access) return Boolean renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References."=";
   subtype PlayersSingletonFactory_Access_Array is org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.PlayersSingletonFactory_Access_Array;
   function "=" (Left, Right : PlayersSingletonFactory_Access_Array) return Boolean renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References."=";
   subtype PlayersSingletonFactory_Access_Array_Access is org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.PlayersSingletonFactory_Access_Array_Access;
   function "=" (Left, Right : PlayersSingletonFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References."=";
   function Java_Box (Value : PlayersSingletonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_PlayersSingletonFactory_Access_Array (Value : access Java_Object'Class) return PlayersSingletonFactory_Access_Array_Access renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.Java_Unbox_PlayersSingletonFactory_Access_Array;
   subtype PlayersSingletonFactory_Access_Array_Access_Array is org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.PlayersSingletonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlayersSingletonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References."=";
   subtype PlayersSingletonFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.PlayersSingletonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayersSingletonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References."=";
   function Java_Box (Value : PlayersSingletonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.Java_Box;
   function Java_Unbox_PlayersSingletonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayersSingletonFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.form.PlayersSingletonFactory_Package_References.Java_Unbox_PlayersSingletonFactory_Access_Array_Access_Array;

   type PlayersSingletonFactory is new Java_Object with null record;
   total : Integer;

   procedure Initialize (This : in out PlayersSingletonFactory'Class);
   function Create return PlayersSingletonFactory_Access;

end org.allbinary.game.input.form.PlayersSingletonFactory_Package;


