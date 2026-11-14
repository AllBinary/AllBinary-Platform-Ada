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
limited with org.allbinary.business.backup.BlisketBackupFactory_Package;
package org.allbinary.business.backup.BlisketBackupFactory_Package_References is
   type BlisketBackupFactory_Access is access all org.allbinary.business.backup.BlisketBackupFactory_Package.BlisketBackupFactory'Class;
   type BlisketBackupFactory_Access_Array is array (Natural range <>) of BlisketBackupFactory_Access;
   type BlisketBackupFactory_Access_Array_Access is access all BlisketBackupFactory_Access_Array;
   type BlisketBackupFactory_Access_Array_Access_Array is array (Natural range <>) of BlisketBackupFactory_Access_Array_Access;
   type BlisketBackupFactory_Access_Array_Access_Array_Access is access all BlisketBackupFactory_Access_Array_Access_Array;
   type BlisketBackupFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BlisketBackupFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BlisketBackupFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BlisketBackupFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BlisketBackupFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BlisketBackupFactory_Access_Array_Access is (if Value /= null and then Value.all in BlisketBackupFactory_Access_Array_Object'Class then BlisketBackupFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BlisketBackupFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BlisketBackupFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BlisketBackupFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BlisketBackupFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BlisketBackupFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BlisketBackupFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BlisketBackupFactory_Access_Array_Access_Array_Object'Class then BlisketBackupFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.backup.BlisketBackupFactory_Package_References;

with org.allbinary.business.backup.BlisketBackupFactory_Package_References;
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
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.backup.BlisketBackupFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BlisketBackupFactory_Access is org.allbinary.business.backup.BlisketBackupFactory_Package_References.BlisketBackupFactory_Access;
   function "=" (Left, Right : BlisketBackupFactory_Access) return Boolean renames org.allbinary.business.backup.BlisketBackupFactory_Package_References."=";
   subtype BlisketBackupFactory_Access_Array is org.allbinary.business.backup.BlisketBackupFactory_Package_References.BlisketBackupFactory_Access_Array;
   function "=" (Left, Right : BlisketBackupFactory_Access_Array) return Boolean renames org.allbinary.business.backup.BlisketBackupFactory_Package_References."=";
   subtype BlisketBackupFactory_Access_Array_Access is org.allbinary.business.backup.BlisketBackupFactory_Package_References.BlisketBackupFactory_Access_Array_Access;
   function "=" (Left, Right : BlisketBackupFactory_Access_Array_Access) return Boolean renames org.allbinary.business.backup.BlisketBackupFactory_Package_References."=";
   function Java_Box (Value : BlisketBackupFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.backup.BlisketBackupFactory_Package_References.Java_Box;
   function Java_Unbox_BlisketBackupFactory_Access_Array (Value : access Java_Object'Class) return BlisketBackupFactory_Access_Array_Access renames org.allbinary.business.backup.BlisketBackupFactory_Package_References.Java_Unbox_BlisketBackupFactory_Access_Array;
   subtype BlisketBackupFactory_Access_Array_Access_Array is org.allbinary.business.backup.BlisketBackupFactory_Package_References.BlisketBackupFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BlisketBackupFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.backup.BlisketBackupFactory_Package_References."=";
   subtype BlisketBackupFactory_Access_Array_Access_Array_Access is org.allbinary.business.backup.BlisketBackupFactory_Package_References.BlisketBackupFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BlisketBackupFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.backup.BlisketBackupFactory_Package_References."=";
   function Java_Box (Value : BlisketBackupFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.backup.BlisketBackupFactory_Package_References.Java_Box;
   function Java_Unbox_BlisketBackupFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BlisketBackupFactory_Access_Array_Access_Array_Access renames org.allbinary.business.backup.BlisketBackupFactory_Package_References.Java_Unbox_BlisketBackupFactory_Access_Array_Access_Array;

   type BlisketBackupFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
   end record;
   instance : BlisketBackupFactory_Access;

   procedure Initialize (This : in out BlisketBackupFactory'Class);
   function Create return BlisketBackupFactory_Access;
   function getInstance return BlisketBackupFactory_Access;
   function getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String) return BasicArrayList_Access;
   procedure getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String);
   procedure backup (This : in out BlisketBackupFactory);
   procedure backupViews (This : in out BlisketBackupFactory);
   procedure backupResources (This : in out BlisketBackupFactory);
   procedure backupJsps (This : in out BlisketBackupFactory);
   procedure backup (This : in out BlisketBackupFactory; fileBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; zipFile : Unbounded_String);

end org.allbinary.business.backup.BlisketBackupFactory_Package;


