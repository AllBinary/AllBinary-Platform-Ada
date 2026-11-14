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
limited with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
package org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References is
   type TouchFeatureFactory_Access is access all org.allbinary.game.configuration.feature.TouchFeatureFactory_Package.TouchFeatureFactory'Class;
   type TouchFeatureFactory_Access_Array is array (Natural range <>) of TouchFeatureFactory_Access;
   type TouchFeatureFactory_Access_Array_Access is access all TouchFeatureFactory_Access_Array;
   type TouchFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of TouchFeatureFactory_Access_Array_Access;
   type TouchFeatureFactory_Access_Array_Access_Array_Access is access all TouchFeatureFactory_Access_Array_Access_Array;
   type TouchFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchFeatureFactory_Access_Array_Object'Class then TouchFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchFeatureFactory_Access_Array_Access_Array_Object'Class then TouchFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package_References;

package org.allbinary.game.configuration.feature.TouchFeatureFactory_Package is

   package Reference_Types is
   subtype TouchFeature_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access;
   use type TouchFeature_Access;
   subtype TouchFeature_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array;
   use type TouchFeature_Access_Array;
   subtype TouchFeature_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access;
   use type TouchFeature_Access_Array_Access;
   subtype TouchFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array;
   use type TouchFeature_Access_Array_Access_Array;
   subtype TouchFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array_Access;
   use type TouchFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchFeatureFactory_Access is org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.TouchFeatureFactory_Access;
   function "=" (Left, Right : TouchFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References."=";
   subtype TouchFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.TouchFeatureFactory_Access_Array;
   function "=" (Left, Right : TouchFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References."=";
   subtype TouchFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.TouchFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : TouchFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References."=";
   function Java_Box (Value : TouchFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_TouchFeatureFactory_Access_Array (Value : access Java_Object'Class) return TouchFeatureFactory_Access_Array_Access renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.Java_Unbox_TouchFeatureFactory_Access_Array;
   subtype TouchFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.TouchFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References."=";
   subtype TouchFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.TouchFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References."=";
   function Java_Box (Value : TouchFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_TouchFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.TouchFeatureFactory_Package_References.Java_Unbox_TouchFeatureFactory_Access_Array_Access_Array;

   type TouchFeatureFactory is new Java_Object with record
      TOUCH_ENABLED : TouchFeature_Access;
      SHOW_SCREEN_BUTTONS : TouchFeature_Access;
      AUTO_HIDE_SHOW_SCREEN_BUTTONS : TouchFeature_Access;
      HIDE_SCREEN_BUTTONS : TouchFeature_Access;
   end record;
   instance : TouchFeatureFactory_Access;

   procedure Initialize (This : in out TouchFeatureFactory'Class);
   function Create return TouchFeatureFactory_Access;
   function getInstance return TouchFeatureFactory_Access;

end org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;


