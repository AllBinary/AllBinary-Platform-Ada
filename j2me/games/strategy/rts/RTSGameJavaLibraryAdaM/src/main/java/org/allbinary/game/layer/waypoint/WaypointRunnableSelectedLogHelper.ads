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
limited with org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
package org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References is
   type WaypointRunnableSelectedLogHelper_Access is access all org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package.WaypointRunnableSelectedLogHelper'Class;
   type WaypointRunnableSelectedLogHelper_Access_Array is array (Natural range <>) of WaypointRunnableSelectedLogHelper_Access;
   type WaypointRunnableSelectedLogHelper_Access_Array_Access is access all WaypointRunnableSelectedLogHelper_Access_Array;
   type WaypointRunnableSelectedLogHelper_Access_Array_Access_Array is array (Natural range <>) of WaypointRunnableSelectedLogHelper_Access_Array_Access;
   type WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access is access all WaypointRunnableSelectedLogHelper_Access_Array_Access_Array;
   type WaypointRunnableSelectedLogHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointRunnableSelectedLogHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointRunnableSelectedLogHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointRunnableSelectedLogHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointRunnableSelectedLogHelper_Access_Array_Access is (if Value /= null and then Value.all in WaypointRunnableSelectedLogHelper_Access_Array_Object'Class then WaypointRunnableSelectedLogHelper_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Object'Class then WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References;

with org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointRunnableSelectedLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.WaypointRunnableSelectedLogHelper_Access;
   function "=" (Left, Right : WaypointRunnableSelectedLogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References."=";
   subtype WaypointRunnableSelectedLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.WaypointRunnableSelectedLogHelper_Access_Array;
   function "=" (Left, Right : WaypointRunnableSelectedLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References."=";
   subtype WaypointRunnableSelectedLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.WaypointRunnableSelectedLogHelper_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableSelectedLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References."=";
   function Java_Box (Value : WaypointRunnableSelectedLogHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.Java_Box;
   function Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array (Value : access Java_Object'Class) return WaypointRunnableSelectedLogHelper_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array;
   subtype WaypointRunnableSelectedLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.WaypointRunnableSelectedLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointRunnableSelectedLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References."=";
   subtype WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References."=";
   function Java_Box (Value : WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.Java_Box;
   function Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointRunnableSelectedLogHelper_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package_References.Java_Unbox_WaypointRunnableSelectedLogHelper_Access_Array_Access_Array;

   type WaypointRunnableSelectedLogHelper is new WaypointRunnableLogHelper with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instanceC : WaypointRunnableSelectedLogHelper_Access;

   procedure Initialize (This : in out WaypointRunnableSelectedLogHelper'Class);
   function Create return WaypointRunnableSelectedLogHelper_Access;
   function getInstance return WaypointRunnableSelectedLogHelper_Access;
   procedure start (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure end_Id (This : in out WaypointRunnableSelectedLogHelper; pathFindingLayerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;


