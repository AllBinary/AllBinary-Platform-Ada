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
--  with java.util.ArrayList_Package; use java.util.ArrayList_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbFileUploadFactory is tagged;
   type AbFileUploadFactory_Access is access all AbFileUploadFactory'Class;
   type AbFileUploadFactory_Access_Array is array (Natural range <>) of AbFileUploadFactory_Access;
   type AbFileUploadFactory_Access_Array_Access is access all AbFileUploadFactory_Access_Array;
   type AbFileUploadFactory_Access_Array_Access_Array is array (Natural range <>) of AbFileUploadFactory_Access_Array_Access;
   type AbFileUploadFactory_Access_Array_Access_Array_Access is access all AbFileUploadFactory_Access_Array_Access_Array;

   type AbFileUploadFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AbFileUploadFactory_Access;

   procedure Initialize (This : in out AbFileUploadFactory'Class);
   function Create return AbFileUploadFactory_Access;
   function getInstance return AbFileUploadFactory_Access;
   function getFileItemStreamList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return List_Access;
   procedure getFileItemStreamList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function getFileItemList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return List_Access;
   procedure getFileItemList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;


