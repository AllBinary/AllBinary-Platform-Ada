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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;

   type LogConfigTypeFactory is tagged;
   type LogConfigTypeFactory_Access is access all LogConfigTypeFactory'Class;
   type LogConfigTypeFactory_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access;
   type LogConfigTypeFactory_Access_Array_Access is access all LogConfigTypeFactory_Access_Array;

   type LogConfigTypeFactory is new Java_Object with record
      NO_DESCRIPTION : Unbounded_String;
      INIT_SERVER : LogConfigType_Access;
      LOBBY_SERVER : LogConfigType_Access;
      GAME_SERVER : LogConfigType_Access;
      GAME_SIMULATOR : LogConfigType_Access;
      CUSTOM_TYPES : LogConfigType_Access;
   end record;
   instance : LogConfigTypeFactory_Access;

   procedure Initialize (This : in out LogConfigTypeFactory'Class);
   function Create return LogConfigTypeFactory_Access;
   function getInstance return LogConfigTypeFactory_Access;
   procedure getInstance;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


