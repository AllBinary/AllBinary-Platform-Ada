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
limited with org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package;
package org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References is
   type LicenseClientAndServerTest_Access is access all org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package.LicenseClientAndServerTest'Class;
   type LicenseClientAndServerTest_Access_Array is array (Natural range <>) of LicenseClientAndServerTest_Access;
   type LicenseClientAndServerTest_Access_Array_Access is access all LicenseClientAndServerTest_Access_Array;
   type LicenseClientAndServerTest_Access_Array_Access_Array is array (Natural range <>) of LicenseClientAndServerTest_Access_Array_Access;
   type LicenseClientAndServerTest_Access_Array_Access_Array_Access is access all LicenseClientAndServerTest_Access_Array_Access_Array;
   type LicenseClientAndServerTest_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseClientAndServerTest_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseClientAndServerTest_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseClientAndServerTest_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseClientAndServerTest_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseClientAndServerTest_Access_Array_Access is (if Value /= null and then Value.all in LicenseClientAndServerTest_Access_Array_Object'Class then LicenseClientAndServerTest_Access_Array_Object'Class (Value.all).Value else null);
   type LicenseClientAndServerTest_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseClientAndServerTest_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseClientAndServerTest_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseClientAndServerTest_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseClientAndServerTest_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseClientAndServerTest_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LicenseClientAndServerTest_Access_Array_Access_Array_Object'Class then LicenseClientAndServerTest_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype LicenseClientAndServerTest_Access is org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.LicenseClientAndServerTest_Access;
   function "=" (Left, Right : LicenseClientAndServerTest_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References."=";
   subtype LicenseClientAndServerTest_Access_Array is org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.LicenseClientAndServerTest_Access_Array;
   function "=" (Left, Right : LicenseClientAndServerTest_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References."=";
   subtype LicenseClientAndServerTest_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.LicenseClientAndServerTest_Access_Array_Access;
   function "=" (Left, Right : LicenseClientAndServerTest_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References."=";
   function Java_Box (Value : LicenseClientAndServerTest_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.Java_Box;
   function Java_Unbox_LicenseClientAndServerTest_Access_Array (Value : access Java_Object'Class) return LicenseClientAndServerTest_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.Java_Unbox_LicenseClientAndServerTest_Access_Array;
   subtype LicenseClientAndServerTest_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.LicenseClientAndServerTest_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseClientAndServerTest_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References."=";
   subtype LicenseClientAndServerTest_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.LicenseClientAndServerTest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseClientAndServerTest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References."=";
   function Java_Box (Value : LicenseClientAndServerTest_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.Java_Box;
   function Java_Unbox_LicenseClientAndServerTest_Access_Array_Access_Array (Value : access Java_Object'Class) return LicenseClientAndServerTest_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package_References.Java_Unbox_LicenseClientAndServerTest_Access_Array_Access_Array;

   type LicenseClientAndServerTest is new Java_Object with record
      logUtil : LogUtil_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LicenseClientAndServerTest'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return LicenseClientAndServerTest_Access;
   procedure test (This : in out LicenseClientAndServerTest);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package;


