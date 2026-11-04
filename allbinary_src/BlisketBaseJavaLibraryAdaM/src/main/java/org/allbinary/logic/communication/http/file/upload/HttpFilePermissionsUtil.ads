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

limited with org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package;
package org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References is
   type HttpFilePermissionsUtil_Access is access all org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package.HttpFilePermissionsUtil'Class;
   type HttpFilePermissionsUtil_Access_Array is array (Natural range <>) of HttpFilePermissionsUtil_Access;
   type HttpFilePermissionsUtil_Access_Array_Access is access all HttpFilePermissionsUtil_Access_Array;
   type HttpFilePermissionsUtil_Access_Array_Access_Array is array (Natural range <>) of HttpFilePermissionsUtil_Access_Array_Access;
   type HttpFilePermissionsUtil_Access_Array_Access_Array_Access is access all HttpFilePermissionsUtil_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References;

with org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HttpFilePermissionsUtil_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References.HttpFilePermissionsUtil_Access;
   function "=" (Left, Right : HttpFilePermissionsUtil_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References."=";
   subtype HttpFilePermissionsUtil_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References.HttpFilePermissionsUtil_Access_Array;
   function "=" (Left, Right : HttpFilePermissionsUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References."=";
   subtype HttpFilePermissionsUtil_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References.HttpFilePermissionsUtil_Access_Array_Access;
   function "=" (Left, Right : HttpFilePermissionsUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References."=";
   subtype HttpFilePermissionsUtil_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References.HttpFilePermissionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HttpFilePermissionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References."=";
   subtype HttpFilePermissionsUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References.HttpFilePermissionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpFilePermissionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package_References."=";

   type HttpFilePermissionsUtil is new Java_Object with null record;
   instance : HttpFilePermissionsUtil_Access;

   procedure Initialize (This : in out HttpFilePermissionsUtil'Class);
   function Create return HttpFilePermissionsUtil_Access;
   function getInstance return HttpFilePermissionsUtil_Access;
   procedure create (This : in out HttpFilePermissionsUtil; path_Param : access AbPath_Package.AbPath'Class);

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package;


