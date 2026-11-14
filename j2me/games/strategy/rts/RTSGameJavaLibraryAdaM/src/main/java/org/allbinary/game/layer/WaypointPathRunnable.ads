-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.WaypointPathRunnable_Package;
package org.allbinary.game.layer.WaypointPathRunnable_Package_References is
   type WaypointPathRunnable_Access is access all org.allbinary.game.layer.WaypointPathRunnable_Package.WaypointPathRunnable'Class;
   type WaypointPathRunnable_Access_Array is array (Natural range <>) of WaypointPathRunnable_Access;
   type WaypointPathRunnable_Access_Array_Access is access all WaypointPathRunnable_Access_Array;
   type WaypointPathRunnable_Access_Array_Access_Array is array (Natural range <>) of WaypointPathRunnable_Access_Array_Access;
   type WaypointPathRunnable_Access_Array_Access_Array_Access is access all WaypointPathRunnable_Access_Array_Access_Array;
   type WaypointPathRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointPathRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointPathRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointPathRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointPathRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointPathRunnable_Access_Array_Access is (if Value /= null and then Value.all in WaypointPathRunnable_Access_Array_Object'Class then WaypointPathRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointPathRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointPathRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointPathRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointPathRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointPathRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointPathRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointPathRunnable_Access_Array_Access_Array_Object'Class then WaypointPathRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.WaypointPathRunnable_Package_References;

with org.allbinary.game.layer.WaypointPathRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;

package org.allbinary.game.layer.WaypointPathRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype WaypointPathRunnable_Access is org.allbinary.game.layer.WaypointPathRunnable_Package_References.WaypointPathRunnable_Access;
   function "=" (Left, Right : WaypointPathRunnable_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnable_Package_References."=";
   subtype WaypointPathRunnable_Access_Array is org.allbinary.game.layer.WaypointPathRunnable_Package_References.WaypointPathRunnable_Access_Array;
   function "=" (Left, Right : WaypointPathRunnable_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnable_Package_References."=";
   subtype WaypointPathRunnable_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnable_Package_References.WaypointPathRunnable_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnable_Package_References."=";
   function Java_Box (Value : WaypointPathRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.WaypointPathRunnable_Package_References.Java_Box;
   function Java_Unbox_WaypointPathRunnable_Access_Array (Value : access Java_Object'Class) return WaypointPathRunnable_Access_Array_Access renames org.allbinary.game.layer.WaypointPathRunnable_Package_References.Java_Unbox_WaypointPathRunnable_Access_Array;
   subtype WaypointPathRunnable_Access_Array_Access_Array is org.allbinary.game.layer.WaypointPathRunnable_Package_References.WaypointPathRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointPathRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnable_Package_References."=";
   subtype WaypointPathRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnable_Package_References.WaypointPathRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnable_Package_References."=";
   function Java_Box (Value : WaypointPathRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.WaypointPathRunnable_Package_References.Java_Box;
   function Java_Unbox_WaypointPathRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointPathRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.layer.WaypointPathRunnable_Package_References.Java_Unbox_WaypointPathRunnable_Access_Array_Access_Array;

   type WaypointPathRunnable is new WaypointPathRunnableBase with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out WaypointPathRunnable'Class);
   function Create return WaypointPathRunnable_Access;
   procedure run (This : in out WaypointPathRunnable);
   function isDone (This : in out WaypointPathRunnable) return Boolean;

end org.allbinary.game.layer.WaypointPathRunnable_Package;


