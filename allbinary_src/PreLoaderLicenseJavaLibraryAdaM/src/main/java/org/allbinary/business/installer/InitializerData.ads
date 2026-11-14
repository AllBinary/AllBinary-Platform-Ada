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
limited with org.allbinary.business.installer.InitializerData_Package;
package org.allbinary.business.installer.InitializerData_Package_References is
   type InitializerData_Access is access all org.allbinary.business.installer.InitializerData_Package.InitializerData'Class;
   type InitializerData_Access_Array is array (Natural range <>) of InitializerData_Access;
   type InitializerData_Access_Array_Access is access all InitializerData_Access_Array;
   type InitializerData_Access_Array_Access_Array is array (Natural range <>) of InitializerData_Access_Array_Access;
   type InitializerData_Access_Array_Access_Array_Access is access all InitializerData_Access_Array_Access_Array;
   type InitializerData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitializerData_Access_Array_Access;
   end record;
   function Java_Box (Value : InitializerData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitializerData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitializerData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitializerData_Access_Array_Access is (if Value /= null and then Value.all in InitializerData_Access_Array_Object'Class then InitializerData_Access_Array_Object'Class (Value.all).Value else null);
   type InitializerData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitializerData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitializerData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitializerData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitializerData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitializerData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitializerData_Access_Array_Access_Array_Object'Class then InitializerData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.installer.InitializerData_Package_References;

with org.allbinary.business.installer.InitializerData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.installer.InitializerData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InitializerData_Access is org.allbinary.business.installer.InitializerData_Package_References.InitializerData_Access;
   function "=" (Left, Right : InitializerData_Access) return Boolean renames org.allbinary.business.installer.InitializerData_Package_References."=";
   subtype InitializerData_Access_Array is org.allbinary.business.installer.InitializerData_Package_References.InitializerData_Access_Array;
   function "=" (Left, Right : InitializerData_Access_Array) return Boolean renames org.allbinary.business.installer.InitializerData_Package_References."=";
   subtype InitializerData_Access_Array_Access is org.allbinary.business.installer.InitializerData_Package_References.InitializerData_Access_Array_Access;
   function "=" (Left, Right : InitializerData_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializerData_Package_References."=";
   function Java_Box (Value : InitializerData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitializerData_Package_References.Java_Box;
   function Java_Unbox_InitializerData_Access_Array (Value : access Java_Object'Class) return InitializerData_Access_Array_Access renames org.allbinary.business.installer.InitializerData_Package_References.Java_Unbox_InitializerData_Access_Array;
   subtype InitializerData_Access_Array_Access_Array is org.allbinary.business.installer.InitializerData_Package_References.InitializerData_Access_Array_Access_Array;
   function "=" (Left, Right : InitializerData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.InitializerData_Package_References."=";
   subtype InitializerData_Access_Array_Access_Array_Access is org.allbinary.business.installer.InitializerData_Package_References.InitializerData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitializerData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializerData_Package_References."=";
   function Java_Box (Value : InitializerData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitializerData_Package_References.Java_Box;
   function Java_Unbox_InitializerData_Access_Array_Access_Array (Value : access Java_Object'Class) return InitializerData_Access_Array_Access_Array_Access renames org.allbinary.business.installer.InitializerData_Package_References.Java_Unbox_InitializerData_Access_Array_Access_Array;

   type InitializerData is new Java_Object with record
      DBUSER : Unbounded_String;
      DBPASSWORD : Unbounded_String;
      ADMINJDBCDRIVER : Unbounded_String;
      ADMINSCHEMA : Unbounded_String;
      ADMINSERVER : Unbounded_String;
      ADMINPORT : Unbounded_String;
      CUSTOMERJDBCDRIVER : Unbounded_String;
      CUSTOMERNAME : Unbounded_String;
      CUSTOMERUSERNAME : Unbounded_String;
      CUSTOMERPASSWORD : Unbounded_String;
      CUSTOMERSCHEMA : Unbounded_String;
      CUSTOMERSERVER : Unbounded_String;
      CUSTOMERPORT : Unbounded_String;
      HISTORYJDBCDRIVER : Unbounded_String;
      HISTORYNAME : Unbounded_String;
      HISTORYUSERNAME : Unbounded_String;
      HISTORYPASSWORD : Unbounded_String;
      HISTORYSCHEMA : Unbounded_String;
      HISTORYSERVER : Unbounded_String;
      HISTORYPORT : Unbounded_String;
      LOGJDBCDRIVER : Unbounded_String;
      LOGNAME : Unbounded_String;
      LOGUSERNAME : Unbounded_String;
      LOGPASSWORD : Unbounded_String;
      LOGSCHEMA : Unbounded_String;
      LOGSERVER : Unbounded_String;
      LOGPORT : Unbounded_String;
      INVENTORYJDBCDRIVER : Unbounded_String;
      INVENTORYNAME : Unbounded_String;
      INVENTORYUSERNAME : Unbounded_String;
      INVENTORYPASSWORD : Unbounded_String;
      INVENTORYSCHEMA : Unbounded_String;
      INVENTORYSERVER : Unbounded_String;
      INVENTORYPORT : Unbounded_String;
      STATICPAGESJDBCDRIVER : Unbounded_String;
      STATICPAGESNAME : Unbounded_String;
      STATICPAGESUSERNAME : Unbounded_String;
      STATICPAGESPASSWORD : Unbounded_String;
      STATICPAGESSCHEMA : Unbounded_String;
      STATICPAGESSERVER : Unbounded_String;
      STATICPAGESPORT : Unbounded_String;
   end record;
   instance : InitializerData_Access;

   procedure Initialize (This : in out InitializerData'Class);
   function Create return InitializerData_Access;
   function getInstance return InitializerData_Access;
   function getJdbcDriverSolutionInfo (This : in out InitializerData) return Unbounded_String;

end org.allbinary.business.installer.InitializerData_Package;


