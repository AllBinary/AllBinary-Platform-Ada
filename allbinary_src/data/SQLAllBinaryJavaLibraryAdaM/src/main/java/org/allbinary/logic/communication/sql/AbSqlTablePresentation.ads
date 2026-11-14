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
limited with org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package;
package org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References is
   type AbSqlTablePresentation_Access is access all org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package.AbSqlTablePresentation'Class;
   type AbSqlTablePresentation_Access_Array is array (Natural range <>) of AbSqlTablePresentation_Access;
   type AbSqlTablePresentation_Access_Array_Access is access all AbSqlTablePresentation_Access_Array;
   type AbSqlTablePresentation_Access_Array_Access_Array is array (Natural range <>) of AbSqlTablePresentation_Access_Array_Access;
   type AbSqlTablePresentation_Access_Array_Access_Array_Access is access all AbSqlTablePresentation_Access_Array_Access_Array;
   type AbSqlTablePresentation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlTablePresentation_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlTablePresentation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlTablePresentation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlTablePresentation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlTablePresentation_Access_Array_Access is (if Value /= null and then Value.all in AbSqlTablePresentation_Access_Array_Object'Class then AbSqlTablePresentation_Access_Array_Object'Class (Value.all).Value else null);
   type AbSqlTablePresentation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlTablePresentation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlTablePresentation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlTablePresentation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlTablePresentation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlTablePresentation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbSqlTablePresentation_Access_Array_Access_Array_Object'Class then AbSqlTablePresentation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References;

with org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package; use org.allbinary.logic.communication.sql.AbSqlBasic_Package;

package org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package is

   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package Reference_Types is
   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   use type DbConnectionInfo_Access;
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   use type DbConnectionInfo_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access;
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   use type DbConnectionInfo_Access_Array_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbSqlTablePresentation_Access is org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.AbSqlTablePresentation_Access;
   function "=" (Left, Right : AbSqlTablePresentation_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References."=";
   subtype AbSqlTablePresentation_Access_Array is org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.AbSqlTablePresentation_Access_Array;
   function "=" (Left, Right : AbSqlTablePresentation_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References."=";
   subtype AbSqlTablePresentation_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.AbSqlTablePresentation_Access_Array_Access;
   function "=" (Left, Right : AbSqlTablePresentation_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References."=";
   function Java_Box (Value : AbSqlTablePresentation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.Java_Box;
   function Java_Unbox_AbSqlTablePresentation_Access_Array (Value : access Java_Object'Class) return AbSqlTablePresentation_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.Java_Unbox_AbSqlTablePresentation_Access_Array;
   subtype AbSqlTablePresentation_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.AbSqlTablePresentation_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlTablePresentation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References."=";
   subtype AbSqlTablePresentation_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.AbSqlTablePresentation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlTablePresentation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References."=";
   function Java_Box (Value : AbSqlTablePresentation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.Java_Box;
   function Java_Unbox_AbSqlTablePresentation_Access_Array_Access_Array (Value : access Java_Object'Class) return AbSqlTablePresentation_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package_References.Java_Unbox_AbSqlTablePresentation_Access_Array_Access_Array;

   type AbSqlTablePresentation is new AbSqlBasic with null record;

   procedure Initialize (This : in out AbSqlTablePresentation'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlTablePresentation_Access;

end org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package;


