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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.MultipassWaypointPathRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type MultipassWaypointPathRunnable is tagged;
   type MultipassWaypointPathRunnable_Access is access all MultipassWaypointPathRunnable'Class;
   type MultipassWaypointPathRunnable_Access_Array is array (Natural range <>) of MultipassWaypointPathRunnable_Access;
   type MultipassWaypointPathRunnable_Access_Array_Access is access all MultipassWaypointPathRunnable_Access_Array;
   type MultipassWaypointPathRunnable_Access_Array_Access_Array is array (Natural range <>) of MultipassWaypointPathRunnable_Access_Array_Access;
   type MultipassWaypointPathRunnable_Access_Array_Access_Array_Access is access all MultipassWaypointPathRunnable_Access_Array_Access_Array;

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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.FirstRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type FirstRunnable is tagged;
   type FirstRunnable_Access is access all FirstRunnable'Class;
   type FirstRunnable_Access_Array is array (Natural range <>) of FirstRunnable_Access;
   type FirstRunnable_Access_Array_Access is access all FirstRunnable_Access_Array;
   type FirstRunnable_Access_Array_Access_Array is array (Natural range <>) of FirstRunnable_Access_Array_Access;
   type FirstRunnable_Access_Array_Access_Array_Access is access all FirstRunnable_Access_Array_Access_Array;

   type FirstRunnable is new ARunnable with record
      multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out FirstRunnable'Class; multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return FirstRunnable_Access;
   procedure run (This : in out FirstRunnable);

end org.allbinary.game.layer.FirstRunnable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.SecondRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type SecondRunnable is tagged;
   type SecondRunnable_Access is access all SecondRunnable'Class;
   type SecondRunnable_Access_Array is array (Natural range <>) of SecondRunnable_Access;
   type SecondRunnable_Access_Array_Access is access all SecondRunnable_Access_Array;
   type SecondRunnable_Access_Array_Access_Array is array (Natural range <>) of SecondRunnable_Access_Array_Access;
   type SecondRunnable_Access_Array_Access_Array_Access is access all SecondRunnable_Access_Array_Access_Array;

   type SecondRunnable is new ARunnable with record
      multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out SecondRunnable'Class; multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return SecondRunnable_Access;
   procedure run (This : in out SecondRunnable);

end org.allbinary.game.layer.SecondRunnable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.layer.EndRunnable_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type EndRunnable is tagged;
   type EndRunnable_Access is access all EndRunnable'Class;
   type EndRunnable_Access_Array is array (Natural range <>) of EndRunnable_Access;
   type EndRunnable_Access_Array_Access is access all EndRunnable_Access_Array;
   type EndRunnable_Access_Array_Access_Array is array (Natural range <>) of EndRunnable_Access_Array_Access;
   type EndRunnable_Access_Array_Access_Array_Access is access all EndRunnable_Access_Array_Access_Array;

   type EndRunnable is new ARunnable with record
      multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access;
   end record;

   procedure Initialize (This : in out EndRunnable'Class; multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class);
   function Create (multipassWaypointPathRunnable_Param : access MultipassWaypointPathRunnable_Package.MultipassWaypointPathRunnable'Class) return EndRunnable_Access;
   procedure run (This : in out EndRunnable);

end org.allbinary.game.layer.EndRunnable_Package;


