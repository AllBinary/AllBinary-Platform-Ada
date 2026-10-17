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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.log.LOGGING_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type LOGGING is tagged;
   type LOGGING_Access is access all LOGGING'Class;
   type LOGGING_Access_Array is array (Natural range <>) of LOGGING_Access;
   type LOGGING_Access_Array_Access is access all LOGGING_Access_Array;

   type LOGGING is new Java_Object with record
      name : Unbounded_String;
   end record;
   logging : BasicArrayList_Access;
   GRAPHICSPAINT : LOGGING_Access;
   GRAPHICSCREATION : LOGGING_Access;
   GRAPHICSDELETION : LOGGING_Access;
   LOADINGERROR : LOGGING_Access;
   MENUEVENT : LOGGING_Access;
   MOUSEEVENT : LOGGING_Access;
   KEYEVENT : LOGGING_Access;
   ACTIONEVENT : LOGGING_Access;
   ADJUSTMENTEVENT : LOGGING_Access;
   COMPONENTEVENT : LOGGING_Access;
   CONTAINEREVENT : LOGGING_Access;
   FOCUSEVENT : LOGGING_Access;
   HIERARCHYEVENT : LOGGING_Access;
   INPUTEVENT : LOGGING_Access;
   INVOCATIONEVENT : LOGGING_Access;
   ITEMEVENT : LOGGING_Access;
   PAINTEVENT : LOGGING_Access;
   TEXTEVENT : LOGGING_Access;
   WINDOWEVENT : LOGGING_Access;

   procedure Initialize (This : in out LOGGING'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return LOGGING_Access;
   function contains (logType_Param : access LOGGING_Package.LOGGING'Class) return Boolean;
   procedure contains (logType_Param : access LOGGING_Package.LOGGING'Class);
   function toString (This : in out LOGGING) return Unbounded_String;

end org.allbinary.log.LOGGING_Package;


