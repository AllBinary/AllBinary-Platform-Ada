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
limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;
package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References is
   type FtpConfigurationMapping_Access is access all org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package.FtpConfigurationMapping'Class;
   type FtpConfigurationMapping_Access_Array is array (Natural range <>) of FtpConfigurationMapping_Access;
   type FtpConfigurationMapping_Access_Array_Access is access all FtpConfigurationMapping_Access_Array;
   type FtpConfigurationMapping_Access_Array_Access_Array is array (Natural range <>) of FtpConfigurationMapping_Access_Array_Access;
   type FtpConfigurationMapping_Access_Array_Access_Array_Access is access all FtpConfigurationMapping_Access_Array_Access_Array;
   type FtpConfigurationMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationMapping_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationMapping_Access_Array_Object'Class then FtpConfigurationMapping_Access_Array_Object'Class (Value.all).Value else null);
   type FtpConfigurationMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationMapping_Access_Array_Access_Array_Object'Class then FtpConfigurationMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References;

with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
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
   subtype FtpConfigurationInterface_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access;
   use type FtpConfigurationInterface_Access;
   subtype FtpConfigurationInterface_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array;
   use type FtpConfigurationInterface_Access_Array;
   subtype FtpConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access;
   use type FtpConfigurationInterface_Access_Array_Access;
   subtype FtpConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array;
   use type FtpConfigurationInterface_Access_Array_Access_Array;
   subtype FtpConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array_Access;
   use type FtpConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FtpConfigurationMapping_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.FtpConfigurationMapping_Access;
   function "=" (Left, Right : FtpConfigurationMapping_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References."=";
   subtype FtpConfigurationMapping_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.FtpConfigurationMapping_Access_Array;
   function "=" (Left, Right : FtpConfigurationMapping_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References."=";
   subtype FtpConfigurationMapping_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.FtpConfigurationMapping_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationMapping_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References."=";
   function Java_Box (Value : FtpConfigurationMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationMapping_Access_Array (Value : access Java_Object'Class) return FtpConfigurationMapping_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.Java_Unbox_FtpConfigurationMapping_Access_Array;
   subtype FtpConfigurationMapping_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.FtpConfigurationMapping_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfigurationMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References."=";
   subtype FtpConfigurationMapping_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.FtpConfigurationMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References."=";
   function Java_Box (Value : FtpConfigurationMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return FtpConfigurationMapping_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package_References.Java_Unbox_FtpConfigurationMapping_Access_Array_Access_Array;

   type FtpConfigurationMapping is new Java_Object and TableMappingInterface with record
      ftpConfigurationInterface : FtpConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out FtpConfigurationMapping'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class);
   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationMapping_Access;
   function toHashMap (This : in out FtpConfigurationMapping) return HashMap_Access;
   function getKey (This : in out FtpConfigurationMapping) return Java_Object_Access;
   function toVector (This : in out FtpConfigurationMapping) return BasicArrayList_Access;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;


