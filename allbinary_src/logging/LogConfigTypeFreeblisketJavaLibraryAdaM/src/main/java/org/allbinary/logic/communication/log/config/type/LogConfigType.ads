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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type LogConfigType is tagged;
   type LogConfigType_Access is access all LogConfigType'Class;
   type LogConfigType_Access_Array is array (Natural range <>) of LogConfigType_Access;
   type LogConfigType_Access_Array_Access is access all LogConfigType_Access_Array;

   type LogConfigType is new Java_Object with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      description : Unbounded_String;
   end record;
   availableLogConfigTypes : BasicArrayList_Access;

   procedure Initialize (This : in out LogConfigType'Class; name : Unbounded_String; description : Unbounded_String);
   function Create (name : Unbounded_String; description : Unbounded_String) return LogConfigType_Access;
   function getName (This : in out LogConfigType) return Unbounded_String;
   procedure getName (This : in out LogConfigType);
   function getDescription (This : in out LogConfigType) return Unbounded_String;
   procedure getDescription (This : in out LogConfigType);
   procedure setName (This : in out LogConfigType; value : Unbounded_String);
   procedure setDescription (This : in out LogConfigType; value : Unbounded_String);

end org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;


