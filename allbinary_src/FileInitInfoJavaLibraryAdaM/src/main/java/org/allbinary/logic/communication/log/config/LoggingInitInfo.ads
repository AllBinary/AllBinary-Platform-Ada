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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.logic.communication.log.config.LoggingInitInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type LoggingInitInfo is tagged;
   type LoggingInitInfo_Access is access all LoggingInitInfo'Class;
   type LoggingInitInfo_Access_Array is array (Natural range <>) of LoggingInitInfo_Access;
   type LoggingInitInfo_Access_Array_Access is access all LoggingInitInfo_Access_Array;
   type LoggingInitInfo_Access_Array_Access_Array is array (Natural range <>) of LoggingInitInfo_Access_Array_Access;
   type LoggingInitInfo_Access_Array_Access_Array_Access is access all LoggingInitInfo_Access_Array_Access_Array;

   type LoggingInitInfo is new Java_Object with null record;
   INITFILENAME : Unbounded_String;
   PACKAGE_Id : Unbounded_String;
   logConfigInfoList : BasicArrayList_Access;
   hasRead : Boolean;

   procedure Initialize (This : in out LoggingInitInfo'Class);
   function Create return LoggingInitInfo_Access;
   function getDoc return Document_Access;
   procedure write;
   procedure read;
   procedure setHasRead (value : Boolean);
   procedure updateIfNeeded;
   function isValid (This : in out LoggingInitInfo) return Boolean;
   procedure set (logConfigInfoVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function get return BasicArrayList_Access;
   function getTypeNameList return BasicArrayList_Access;
   function getTypeList return BasicArrayList_Access;
   function getNumberOfLogConfigs (This : in out LoggingInitInfo) return Integer;
   function toString (This : in out LoggingInitInfo) return Unbounded_String;

end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;


