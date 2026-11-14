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

with AllBinary_Java;
limited with org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;
package org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References is
   type HttpFilePermissions_Access is access all org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package.HttpFilePermissions'Class;
   type HttpFilePermissions_Access_Array is array (Natural range <>) of HttpFilePermissions_Access;
   type HttpFilePermissions_Access_Array_Access is access all HttpFilePermissions_Access_Array;
   type HttpFilePermissions_Access_Array_Access_Array is array (Natural range <>) of HttpFilePermissions_Access_Array_Access;
   type HttpFilePermissions_Access_Array_Access_Array_Access is access all HttpFilePermissions_Access_Array_Access_Array;
   type HttpFilePermissions_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HttpFilePermissions_Access_Array_Access;
   end record;
   function Java_Box (Value : HttpFilePermissions_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HttpFilePermissions_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HttpFilePermissions_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HttpFilePermissions_Access_Array_Access is (if Value /= null and then Value.all in HttpFilePermissions_Access_Array_Object'Class then HttpFilePermissions_Access_Array_Object'Class (Value.all).Value else null);
   type HttpFilePermissions_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HttpFilePermissions_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HttpFilePermissions_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HttpFilePermissions_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HttpFilePermissions_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HttpFilePermissions_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HttpFilePermissions_Access_Array_Access_Array_Object'Class then HttpFilePermissions_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References;

with org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HttpFilePermissions_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.HttpFilePermissions_Access;
   function "=" (Left, Right : HttpFilePermissions_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References."=";
   subtype HttpFilePermissions_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.HttpFilePermissions_Access_Array;
   function "=" (Left, Right : HttpFilePermissions_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References."=";
   subtype HttpFilePermissions_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.HttpFilePermissions_Access_Array_Access;
   function "=" (Left, Right : HttpFilePermissions_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References."=";
   function Java_Box (Value : HttpFilePermissions_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.Java_Box;
   function Java_Unbox_HttpFilePermissions_Access_Array (Value : access Java_Object'Class) return HttpFilePermissions_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.Java_Unbox_HttpFilePermissions_Access_Array;
   subtype HttpFilePermissions_Access_Array_Access_Array is org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.HttpFilePermissions_Access_Array_Access_Array;
   function "=" (Left, Right : HttpFilePermissions_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References."=";
   subtype HttpFilePermissions_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.HttpFilePermissions_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpFilePermissions_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References."=";
   function Java_Box (Value : HttpFilePermissions_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.Java_Box;
   function Java_Unbox_HttpFilePermissions_Access_Array_Access_Array (Value : access Java_Object'Class) return HttpFilePermissions_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package_References.Java_Unbox_HttpFilePermissions_Access_Array_Access_Array;

   type HttpFilePermissions is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      file : AbFile_Access;
      userRoles : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HttpFilePermissions'Class; fullPath_Param : access AbPath_Package.AbPath'Class);
   function Create (fullPath_Param : access AbPath_Package.AbPath'Class) return HttpFilePermissions_Access;
   function isFile (This : in out HttpFilePermissions) return Boolean;
   function getUserRoles (This : in out HttpFilePermissions) return BasicArrayList_Access;

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;


