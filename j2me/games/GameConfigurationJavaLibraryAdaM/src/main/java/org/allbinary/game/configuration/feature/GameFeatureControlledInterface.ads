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
limited with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
package org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References is
   type GameFeatureControlledInterface_Access is access all org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package.GameFeatureControlledInterface'Class;
   type GameFeatureControlledInterface_Access_Array is array (Natural range <>) of GameFeatureControlledInterface_Access;
   type GameFeatureControlledInterface_Access_Array_Access is access all GameFeatureControlledInterface_Access_Array;
   type GameFeatureControlledInterface_Access_Array_Access_Array is array (Natural range <>) of GameFeatureControlledInterface_Access_Array_Access;
   type GameFeatureControlledInterface_Access_Array_Access_Array_Access is access all GameFeatureControlledInterface_Access_Array_Access_Array;
   type GameFeatureControlledInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureControlledInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureControlledInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureControlledInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureControlledInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureControlledInterface_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureControlledInterface_Access_Array_Object'Class then GameFeatureControlledInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureControlledInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureControlledInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureControlledInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureControlledInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureControlledInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureControlledInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureControlledInterface_Access_Array_Access_Array_Object'Class then GameFeatureControlledInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GameFeatureControlledInterface is interface;
   subtype GameFeatureControlledInterface_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access;
   function "=" (Left, Right : GameFeatureControlledInterface_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References."=";
   subtype GameFeatureControlledInterface_Access_Array is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array;
   function "=" (Left, Right : GameFeatureControlledInterface_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References."=";
   subtype GameFeatureControlledInterface_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access;
   function "=" (Left, Right : GameFeatureControlledInterface_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References."=";
   function Java_Box (Value : GameFeatureControlledInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.Java_Box;
   function Java_Unbox_GameFeatureControlledInterface_Access_Array (Value : access Java_Object'Class) return GameFeatureControlledInterface_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.Java_Unbox_GameFeatureControlledInterface_Access_Array;
   subtype GameFeatureControlledInterface_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureControlledInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References."=";
   subtype GameFeatureControlledInterface_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureControlledInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References."=";
   function Java_Box (Value : GameFeatureControlledInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.Java_Box;
   function Java_Unbox_GameFeatureControlledInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureControlledInterface_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.Java_Unbox_GameFeatureControlledInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameFeatureControlledInterface (Value : GameFeatureControlledInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out GameFeatureControlledInterface; level : Integer) is abstract;
   function isFeature (This : in out GameFeatureControlledInterface) return Boolean is abstract;
   function isLoadingLevel (This : in out GameFeatureControlledInterface; level : Integer) return Boolean is abstract;
   procedure isLoadingLevel (This : in out GameFeatureControlledInterface; level : Integer) is abstract;

end org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;


