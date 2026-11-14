-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayerEvent_Package;
package org.allbinary.game.layer.RTSLayerEvent_Package_References is
   type RTSLayerEvent_Access is access all org.allbinary.game.layer.RTSLayerEvent_Package.RTSLayerEvent'Class;
   type RTSLayerEvent_Access_Array is array (Natural range <>) of RTSLayerEvent_Access;
   type RTSLayerEvent_Access_Array_Access is access all RTSLayerEvent_Access_Array;
   type RTSLayerEvent_Access_Array_Access_Array is array (Natural range <>) of RTSLayerEvent_Access_Array_Access;
   type RTSLayerEvent_Access_Array_Access_Array_Access is access all RTSLayerEvent_Access_Array_Access_Array;
   type RTSLayerEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerEvent_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerEvent_Access_Array_Object'Class then RTSLayerEvent_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayerEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerEvent_Access_Array_Access_Array_Object'Class then RTSLayerEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.RTSLayerEvent_Package_References;

with org.allbinary.game.layer.RTSLayerEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package org.allbinary.game.layer.RTSLayerEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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


   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   function "=" (Left, Right : RTSLayerEvent_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   function Java_Box (Value : RTSLayerEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayerEvent_Package_References.Java_Box;
   function Java_Unbox_RTSLayerEvent_Access_Array (Value : access Java_Object'Class) return RTSLayerEvent_Access_Array_Access renames org.allbinary.game.layer.RTSLayerEvent_Package_References.Java_Unbox_RTSLayerEvent_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   function Java_Box (Value : RTSLayerEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayerEvent_Package_References.Java_Box;
   function Java_Unbox_RTSLayerEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayerEvent_Access_Array_Access_Array_Access renames org.allbinary.game.layer.RTSLayerEvent_Package_References.Java_Unbox_RTSLayerEvent_Access_Array_Access_Array;

   type RTSLayerEvent is new AllBinaryEventObject with record
      rtsLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out RTSLayerEvent'Class; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function Create (rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) return RTSLayerEvent_Access;
   function toString (This : in out RTSLayerEvent) return Unbounded_String;
   function getRtsLayer (This : in out RTSLayerEvent) return PathFindingLayerInterface_Access;
   procedure setRtsLayer (This : in out RTSLayerEvent; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.RTSLayerEvent_Package;


