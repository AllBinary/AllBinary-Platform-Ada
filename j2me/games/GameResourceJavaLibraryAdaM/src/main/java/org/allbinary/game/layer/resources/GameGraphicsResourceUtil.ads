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
limited with org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;
package org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References is
   type GameGraphicsResourceUtil_Access is access all org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package.GameGraphicsResourceUtil'Class;
   type GameGraphicsResourceUtil_Access_Array is array (Natural range <>) of GameGraphicsResourceUtil_Access;
   type GameGraphicsResourceUtil_Access_Array_Access is access all GameGraphicsResourceUtil_Access_Array;
   type GameGraphicsResourceUtil_Access_Array_Access_Array is array (Natural range <>) of GameGraphicsResourceUtil_Access_Array_Access;
   type GameGraphicsResourceUtil_Access_Array_Access_Array_Access is access all GameGraphicsResourceUtil_Access_Array_Access_Array;
   type GameGraphicsResourceUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameGraphicsResourceUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameGraphicsResourceUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameGraphicsResourceUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameGraphicsResourceUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameGraphicsResourceUtil_Access_Array_Access is (if Value /= null and then Value.all in GameGraphicsResourceUtil_Access_Array_Object'Class then GameGraphicsResourceUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameGraphicsResourceUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameGraphicsResourceUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameGraphicsResourceUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameGraphicsResourceUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameGraphicsResourceUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameGraphicsResourceUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameGraphicsResourceUtil_Access_Array_Access_Array_Object'Class then GameGraphicsResourceUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References;

with org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.GraphicsFeature_Package;
with org.allbinary.game.configuration.feature.GraphicsFeature_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package is

   package GraphicsFeature_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeature_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GraphicsFeature_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access;
   use type GraphicsFeature_Access;
   subtype GraphicsFeature_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array;
   use type GraphicsFeature_Access_Array;
   subtype GraphicsFeature_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access;
   use type GraphicsFeature_Access_Array_Access;
   subtype GraphicsFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array;
   use type GraphicsFeature_Access_Array_Access_Array;
   subtype GraphicsFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array_Access;
   use type GraphicsFeature_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameGraphicsResourceUtil_Access is org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.GameGraphicsResourceUtil_Access;
   function "=" (Left, Right : GameGraphicsResourceUtil_Access) return Boolean renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References."=";
   subtype GameGraphicsResourceUtil_Access_Array is org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.GameGraphicsResourceUtil_Access_Array;
   function "=" (Left, Right : GameGraphicsResourceUtil_Access_Array) return Boolean renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References."=";
   subtype GameGraphicsResourceUtil_Access_Array_Access is org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.GameGraphicsResourceUtil_Access_Array_Access;
   function "=" (Left, Right : GameGraphicsResourceUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References."=";
   function Java_Box (Value : GameGraphicsResourceUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.Java_Box;
   function Java_Unbox_GameGraphicsResourceUtil_Access_Array (Value : access Java_Object'Class) return GameGraphicsResourceUtil_Access_Array_Access renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.Java_Unbox_GameGraphicsResourceUtil_Access_Array;
   subtype GameGraphicsResourceUtil_Access_Array_Access_Array is org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.GameGraphicsResourceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameGraphicsResourceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References."=";
   subtype GameGraphicsResourceUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.GameGraphicsResourceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameGraphicsResourceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References."=";
   function Java_Box (Value : GameGraphicsResourceUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.Java_Box;
   function Java_Unbox_GameGraphicsResourceUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameGraphicsResourceUtil_Access_Array_Access_Array_Access renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package_References.Java_Unbox_GameGraphicsResourceUtil_Access_Array_Access_Array;

   type GameGraphicsResourceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      SPRITE : Unbounded_String;
      QUARTER : Unbounded_String;
      name : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameGraphicsResourceUtil'Class);
   function Create return GameGraphicsResourceUtil_Access;
   function getInstance return GameGraphicsResourceUtil_Access;
   function getString (This : in out GameGraphicsResourceUtil) return Unbounded_String;
   function getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature_Package.GraphicsFeature'Class) return Unbounded_String;
   procedure getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature_Package.GraphicsFeature'Class);
   function getName (This : in out GameGraphicsResourceUtil) return Unbounded_String;

end org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;


