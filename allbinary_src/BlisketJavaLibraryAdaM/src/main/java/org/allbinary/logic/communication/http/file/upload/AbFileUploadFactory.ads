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

limited with org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;
package org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References is
   type AbFileUploadFactory_Access is access all org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package.AbFileUploadFactory'Class;
   type AbFileUploadFactory_Access_Array is array (Natural range <>) of AbFileUploadFactory_Access;
   type AbFileUploadFactory_Access_Array_Access is access all AbFileUploadFactory_Access_Array;
   type AbFileUploadFactory_Access_Array_Access_Array is array (Natural range <>) of AbFileUploadFactory_Access_Array_Access;
   type AbFileUploadFactory_Access_Array_Access_Array_Access is access all AbFileUploadFactory_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References;

with org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AbFileUploadFactory_Access is org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References.AbFileUploadFactory_Access;
   function "=" (Left, Right : AbFileUploadFactory_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References."=";
   subtype AbFileUploadFactory_Access_Array is org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References.AbFileUploadFactory_Access_Array;
   function "=" (Left, Right : AbFileUploadFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References."=";
   subtype AbFileUploadFactory_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References.AbFileUploadFactory_Access_Array_Access;
   function "=" (Left, Right : AbFileUploadFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References."=";
   subtype AbFileUploadFactory_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References.AbFileUploadFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileUploadFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References."=";
   subtype AbFileUploadFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References.AbFileUploadFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileUploadFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package_References."=";

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


