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

limited with org.allbinary.game.init.DefaultGameInitializationListener_Package;
package org.allbinary.game.init.DefaultGameInitializationListener_Package_References is
   type DefaultGameInitializationListener_Access is access all org.allbinary.game.init.DefaultGameInitializationListener_Package.DefaultGameInitializationListener'Class;
   type DefaultGameInitializationListener_Access_Array is array (Natural range <>) of DefaultGameInitializationListener_Access;
   type DefaultGameInitializationListener_Access_Array_Access is access all DefaultGameInitializationListener_Access_Array;
   type DefaultGameInitializationListener_Access_Array_Access_Array is array (Natural range <>) of DefaultGameInitializationListener_Access_Array_Access;
   type DefaultGameInitializationListener_Access_Array_Access_Array_Access is access all DefaultGameInitializationListener_Access_Array_Access_Array;
end org.allbinary.game.init.DefaultGameInitializationListener_Package_References;

with org.allbinary.game.init.DefaultGameInitializationListener_Package_References;
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
limited with org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
limited with org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.init.DefaultGameInitializationListener_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GameInitializedEvent_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEvent_Package;
   package GameInitializedListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   use type GameInitializedEvent_Access;
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   use type GameInitializedEvent_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access;
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   use type GameInitializedEvent_Access_Array_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access_Array_Access;
   subtype SWTJOGLProcessor_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access;
   use type SWTJOGLProcessor_Access;
   subtype SWTJOGLProcessor_Access_Array is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array;
   use type SWTJOGLProcessor_Access_Array;
   subtype SWTJOGLProcessor_Access_Array_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access;
   use type SWTJOGLProcessor_Access_Array_Access;
   subtype SWTJOGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access_Array;
   use type SWTJOGLProcessor_Access_Array_Access_Array;
   subtype SWTJOGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.SWTJOGLProcessor_Package_References.SWTJOGLProcessor_Access_Array_Access_Array_Access;
   use type SWTJOGLProcessor_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DefaultGameInitializationListener_Access is org.allbinary.game.init.DefaultGameInitializationListener_Package_References.DefaultGameInitializationListener_Access;
   function "=" (Left, Right : DefaultGameInitializationListener_Access) return Boolean renames org.allbinary.game.init.DefaultGameInitializationListener_Package_References."=";
   subtype DefaultGameInitializationListener_Access_Array is org.allbinary.game.init.DefaultGameInitializationListener_Package_References.DefaultGameInitializationListener_Access_Array;
   function "=" (Left, Right : DefaultGameInitializationListener_Access_Array) return Boolean renames org.allbinary.game.init.DefaultGameInitializationListener_Package_References."=";
   subtype DefaultGameInitializationListener_Access_Array_Access is org.allbinary.game.init.DefaultGameInitializationListener_Package_References.DefaultGameInitializationListener_Access_Array_Access;
   function "=" (Left, Right : DefaultGameInitializationListener_Access_Array_Access) return Boolean renames org.allbinary.game.init.DefaultGameInitializationListener_Package_References."=";
   subtype DefaultGameInitializationListener_Access_Array_Access_Array is org.allbinary.game.init.DefaultGameInitializationListener_Package_References.DefaultGameInitializationListener_Access_Array_Access_Array;
   function "=" (Left, Right : DefaultGameInitializationListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.DefaultGameInitializationListener_Package_References."=";
   subtype DefaultGameInitializationListener_Access_Array_Access_Array_Access is org.allbinary.game.init.DefaultGameInitializationListener_Package_References.DefaultGameInitializationListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DefaultGameInitializationListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.DefaultGameInitializationListener_Package_References."=";

   type DefaultGameInitializationListener is new Java_Object and GameInitializedListenerInterface with record
      logUtil : LogUtil_Access;
      swtJOGLProcessor : SWTJOGLProcessor_Access;
      firstTime : Boolean;
   end record;

   procedure Initialize (This : in out DefaultGameInitializationListener'Class);
   function Create return DefaultGameInitializationListener_Access;
   procedure onEvent (This : in out DefaultGameInitializationListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onGameInitialized (This : in out DefaultGameInitializationListener; gameInitializedEvent_Param : access GameInitializedEvent_Package.GameInitializedEvent'Class);

end org.allbinary.game.init.DefaultGameInitializationListener_Package;


