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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.RTSLayerEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type RTSLayerEvent is tagged;
   type RTSLayerEvent_Access is access all RTSLayerEvent'Class;
   type RTSLayerEvent_Access_Array is array (Natural range <>) of RTSLayerEvent_Access;
   type RTSLayerEvent_Access_Array_Access is access all RTSLayerEvent_Access_Array;
   type RTSLayerEvent_Access_Array_Access_Array is array (Natural range <>) of RTSLayerEvent_Access_Array_Access;
   type RTSLayerEvent_Access_Array_Access_Array_Access is access all RTSLayerEvent_Access_Array_Access_Array;

   type RTSLayerEvent is new AllBinaryEventObject with record
      rtsLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out RTSLayerEvent'Class; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function Create (rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) return RTSLayerEvent_Access;
   function toString (This : in out RTSLayerEvent) return Unbounded_String;
   function getRtsLayer (This : in out RTSLayerEvent) return PathFindingLayerInterface_Access;
   procedure setRtsLayer (This : in out RTSLayerEvent; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.RTSLayerEvent_Package;


