-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
package org.allbinary.game.layer.RTSLayer2LogHelper_Package_References is
   type RTSLayer2LogHelper_Access is access all org.allbinary.game.layer.RTSLayer2LogHelper_Package.RTSLayer2LogHelper'Class;
   type RTSLayer2LogHelper_Access_Array is array (Natural range <>) of RTSLayer2LogHelper_Access;
   type RTSLayer2LogHelper_Access_Array_Access is access all RTSLayer2LogHelper_Access_Array;
   type RTSLayer2LogHelper_Access_Array_Access_Array is array (Natural range <>) of RTSLayer2LogHelper_Access_Array_Access;
   type RTSLayer2LogHelper_Access_Array_Access_Array_Access is access all RTSLayer2LogHelper_Access_Array_Access_Array;
   type RTSLayer2LogHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayer2LogHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayer2LogHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayer2LogHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayer2LogHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayer2LogHelper_Access_Array_Access is (if Value /= null and then Value.all in RTSLayer2LogHelper_Access_Array_Object'Class then RTSLayer2LogHelper_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayer2LogHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayer2LogHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayer2LogHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayer2LogHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayer2LogHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayer2LogHelper_Access_Array_Access_Array_Object'Class then RTSLayer2LogHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.RTSLayer2LogHelper_Package_References;

with org.allbinary.game.layer.RTSLayer2LogHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package org.allbinary.game.layer.RTSLayer2LogHelper_Package is

   package Reference_Types is
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayer2LogHelper_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   function Java_Box (Value : RTSLayer2LogHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.Java_Box;
   function Java_Unbox_RTSLayer2LogHelper_Access_Array (Value : access Java_Object'Class) return RTSLayer2LogHelper_Access_Array_Access renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.Java_Unbox_RTSLayer2LogHelper_Access_Array;
   subtype RTSLayer2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   subtype RTSLayer2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References."=";
   function Java_Box (Value : RTSLayer2LogHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.Java_Box;
   function Java_Unbox_RTSLayer2LogHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayer2LogHelper_Access_Array_Access_Array_Access renames org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.Java_Unbox_RTSLayer2LogHelper_Access_Array_Access_Array;

   type RTSLayer2LogHelper is new Java_Object with null record;
   instance : RTSLayer2LogHelper_Access;

   procedure Initialize (This : in out RTSLayer2LogHelper'Class);
   function Create return RTSLayer2LogHelper_Access;
   function getInstance return RTSLayer2LogHelper_Access;
   procedure steeringUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure steeringFireOrStop (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingAbove (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseLeft (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseRight (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure buildingChaseDown (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingChaseUp (This : in out RTSLayer2LogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; angle : Integer);
   procedure buildingLeft (This : in out RTSLayer2LogHelper);
   procedure buildingRight (This : in out RTSLayer2LogHelper);

end org.allbinary.game.layer.RTSLayer2LogHelper_Package;


