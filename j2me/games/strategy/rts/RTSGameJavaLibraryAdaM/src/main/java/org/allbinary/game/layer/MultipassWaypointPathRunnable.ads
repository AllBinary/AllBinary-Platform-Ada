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

limited with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
package org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References is
   type MultipassWaypointPathRunnable_Access is access all org.allbinary.game.layer.MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class;
   type MultipassWaypointPathRunnable_Access_Array is array (Natural range <>) of MultipassWaypointPathRunnable_Access;
   type MultipassWaypointPathRunnable_Access_Array_Access is access all MultipassWaypointPathRunnable_Access_Array;
   type MultipassWaypointPathRunnable_Access_Array_Access_Array is array (Natural range <>) of MultipassWaypointPathRunnable_Access_Array_Access;
   type MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is access all MultipassWaypointPathRunnable_Access_Array_Access_Array;
end org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References;

with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.MultipassWaypointPathRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultipassWaypointPathRunnable_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access;
   function "=" (Left, Right : MultipassWaypointPathRunnable_Access) return Boolean renames org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References."=";
   subtype MultipassWaypointPathRunnable_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array;
   function "=" (Left, Right : MultipassWaypointPathRunnable_Access_Array) return Boolean renames org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References."=";
   subtype MultipassWaypointPathRunnable_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access;
   function "=" (Left, Right : MultipassWaypointPathRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References."=";
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : MultipassWaypointPathRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References."=";
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipassWaypointPathRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References."=";

   type MultipassWaypointPathRunnable is new WaypointPathRunnableBase with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
      multipassState : MultipassState_Access;
      done : Boolean;
      list : BasicArrayList_Access;
      pathFindingInfo : Java_Object_Access;
      FIRST_RUNNABLE : Runnable_Access;
      SECOND_RUNNABLE : Runnable_Access;
      END_RUNNABLE : Runnable_Access;
      ALREADY_ENDED_RUNNABLE : Runnable_Access;
      currentPassRunnable : Runnable_Access;
   end record;

   procedure Initialize (This : in out MultipassWaypointPathRunnable'Class);
   function Create return MultipassWaypointPathRunnable_Access;
   procedure setRunning (This : in out MultipassWaypointPathRunnable; isRunning : Boolean);
   procedure run (This : in out MultipassWaypointPathRunnable);
   procedure reset2 (This : in out MultipassWaypointPathRunnable);
   procedure finish (This : in out MultipassWaypointPathRunnable);
   function isDone (This : in out MultipassWaypointPathRunnable) return Boolean;
   procedure reset (This : in out MultipassWaypointPathRunnable);
   procedure processFirstRunnable (This : in out MultipassWaypointPathRunnable);
   procedure processSecondRunnable (This : in out MultipassWaypointPathRunnable);
   procedure processEndRunnable (This : in out MultipassWaypointPathRunnable);

end org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;

limited with org.allbinary.game.layer.FirstRunnable_Package;
package org.allbinary.game.layer.FirstRunnable_Package_References is
   type FirstRunnable_Access is access all org.allbinary.game.layer.FirstRunnable_Package.FirstRunnable'Class;
   type FirstRunnable_Access_Array is array (Natural range <>) of FirstRunnable_Access;
   type FirstRunnable_Access_Array_Access is access all FirstRunnable_Access_Array;
   type FirstRunnable_Access_Array_Access_Array is array (Natural range <>) of FirstRunnable_Access_Array_Access;
   type FirstRunnable_Access_Array_Access_Array_Access is access all FirstRunnable_Access_Array_Access_Array;
end org.allbinary.game.layer.FirstRunnable_Package_References;

with org.allbinary.game.layer.FirstRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
limited with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.FirstRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access;
   use type MultipassWaypointPathRunnable_Access;
   subtype MultipassWaypointPathRunnable_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FirstRunnable_Access is org.allbinary.game.layer.FirstRunnable_Package_References.FirstRunnable_Access;
   function "=" (Left, Right : FirstRunnable_Access) return Boolean renames org.allbinary.game.layer.FirstRunnable_Package_References."=";
   subtype FirstRunnable_Access_Array is org.allbinary.game.layer.FirstRunnable_Package_References.FirstRunnable_Access_Array;
   function "=" (Left, Right : FirstRunnable_Access_Array) return Boolean renames org.allbinary.game.layer.FirstRunnable_Package_References."=";
   subtype FirstRunnable_Access_Array_Access is org.allbinary.game.layer.FirstRunnable_Package_References.FirstRunnable_Access_Array_Access;
   function "=" (Left, Right : FirstRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.FirstRunnable_Package_References."=";
   subtype FirstRunnable_Access_Array_Access_Array is org.allbinary.game.layer.FirstRunnable_Package_References.FirstRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : FirstRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.FirstRunnable_Package_References."=";
   subtype FirstRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.FirstRunnable_Package_References.FirstRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FirstRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.FirstRunnable_Package_References."=";

   type FirstRunnable is new ARunnable with record
      multipassWaypointPathRunnable_Var : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out FirstRunnable'Class; multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return FirstRunnable_Access;
   procedure run (This : in out FirstRunnable);

end org.allbinary.game.layer.FirstRunnable_Package;

limited with org.allbinary.game.layer.SecondRunnable_Package;
package org.allbinary.game.layer.SecondRunnable_Package_References is
   type SecondRunnable_Access is access all org.allbinary.game.layer.SecondRunnable_Package.SecondRunnable'Class;
   type SecondRunnable_Access_Array is array (Natural range <>) of SecondRunnable_Access;
   type SecondRunnable_Access_Array_Access is access all SecondRunnable_Access_Array;
   type SecondRunnable_Access_Array_Access_Array is array (Natural range <>) of SecondRunnable_Access_Array_Access;
   type SecondRunnable_Access_Array_Access_Array_Access is access all SecondRunnable_Access_Array_Access_Array;
end org.allbinary.game.layer.SecondRunnable_Package_References;

with org.allbinary.game.layer.SecondRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
limited with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.SecondRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access;
   use type MultipassWaypointPathRunnable_Access;
   subtype MultipassWaypointPathRunnable_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SecondRunnable_Access is org.allbinary.game.layer.SecondRunnable_Package_References.SecondRunnable_Access;
   function "=" (Left, Right : SecondRunnable_Access) return Boolean renames org.allbinary.game.layer.SecondRunnable_Package_References."=";
   subtype SecondRunnable_Access_Array is org.allbinary.game.layer.SecondRunnable_Package_References.SecondRunnable_Access_Array;
   function "=" (Left, Right : SecondRunnable_Access_Array) return Boolean renames org.allbinary.game.layer.SecondRunnable_Package_References."=";
   subtype SecondRunnable_Access_Array_Access is org.allbinary.game.layer.SecondRunnable_Package_References.SecondRunnable_Access_Array_Access;
   function "=" (Left, Right : SecondRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SecondRunnable_Package_References."=";
   subtype SecondRunnable_Access_Array_Access_Array is org.allbinary.game.layer.SecondRunnable_Package_References.SecondRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : SecondRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SecondRunnable_Package_References."=";
   subtype SecondRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SecondRunnable_Package_References.SecondRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SecondRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SecondRunnable_Package_References."=";

   type SecondRunnable is new ARunnable with record
      multipassWaypointPathRunnable_Var : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out SecondRunnable'Class; multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return SecondRunnable_Access;
   procedure run (This : in out SecondRunnable);

end org.allbinary.game.layer.SecondRunnable_Package;

limited with org.allbinary.game.layer.EndRunnable_Package;
package org.allbinary.game.layer.EndRunnable_Package_References is
   type EndRunnable_Access is access all org.allbinary.game.layer.EndRunnable_Package.EndRunnable'Class;
   type EndRunnable_Access_Array is array (Natural range <>) of EndRunnable_Access;
   type EndRunnable_Access_Array_Access is access all EndRunnable_Access_Array;
   type EndRunnable_Access_Array_Access_Array is array (Natural range <>) of EndRunnable_Access_Array_Access;
   type EndRunnable_Access_Array_Access_Array_Access is access all EndRunnable_Access_Array_Access_Array;
end org.allbinary.game.layer.EndRunnable_Package_References;

with org.allbinary.game.layer.EndRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
limited with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.EndRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access;
   use type MultipassWaypointPathRunnable_Access;
   subtype MultipassWaypointPathRunnable_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array;
   subtype MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultipassWaypointPathRunnable_Package_References.MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   use type MultipassWaypointPathRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EndRunnable_Access is org.allbinary.game.layer.EndRunnable_Package_References.EndRunnable_Access;
   function "=" (Left, Right : EndRunnable_Access) return Boolean renames org.allbinary.game.layer.EndRunnable_Package_References."=";
   subtype EndRunnable_Access_Array is org.allbinary.game.layer.EndRunnable_Package_References.EndRunnable_Access_Array;
   function "=" (Left, Right : EndRunnable_Access_Array) return Boolean renames org.allbinary.game.layer.EndRunnable_Package_References."=";
   subtype EndRunnable_Access_Array_Access is org.allbinary.game.layer.EndRunnable_Package_References.EndRunnable_Access_Array_Access;
   function "=" (Left, Right : EndRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.EndRunnable_Package_References."=";
   subtype EndRunnable_Access_Array_Access_Array is org.allbinary.game.layer.EndRunnable_Package_References.EndRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : EndRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.EndRunnable_Package_References."=";
   subtype EndRunnable_Access_Array_Access_Array_Access is org.allbinary.game.layer.EndRunnable_Package_References.EndRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EndRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.EndRunnable_Package_References."=";

   type EndRunnable is new ARunnable with record
      multipassWaypointPathRunnable_Var : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out EndRunnable'Class; multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Var_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return EndRunnable_Access;
   procedure run (This : in out EndRunnable);

end org.allbinary.game.layer.EndRunnable_Package;


