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
limited with org.allbinary.business.init.db.InitDbHelperFactory_Package;
package org.allbinary.business.init.db.InitDbHelperFactory_Package_References is
   type InitDbHelperFactory_Access is access all org.allbinary.business.init.db.InitDbHelperFactory_Package.InitDbHelperFactory'Class;
   type InitDbHelperFactory_Access_Array is array (Natural range <>) of InitDbHelperFactory_Access;
   type InitDbHelperFactory_Access_Array_Access is access all InitDbHelperFactory_Access_Array;
   type InitDbHelperFactory_Access_Array_Access_Array is array (Natural range <>) of InitDbHelperFactory_Access_Array_Access;
   type InitDbHelperFactory_Access_Array_Access_Array_Access is access all InitDbHelperFactory_Access_Array_Access_Array;
   type InitDbHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitDbHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InitDbHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitDbHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitDbHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitDbHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in InitDbHelperFactory_Access_Array_Object'Class then InitDbHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InitDbHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitDbHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitDbHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitDbHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitDbHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitDbHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitDbHelperFactory_Access_Array_Access_Array_Object'Class then InitDbHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.db.InitDbHelperFactory_Package_References;

with org.allbinary.business.init.db.InitDbHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;

package org.allbinary.business.init.db.InitDbHelperFactory_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   use type DatabaseConnectionInfoInterface_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InitDbHelperFactory_Access is org.allbinary.business.init.db.InitDbHelperFactory_Package_References.InitDbHelperFactory_Access;
   function "=" (Left, Right : InitDbHelperFactory_Access) return Boolean renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References."=";
   subtype InitDbHelperFactory_Access_Array is org.allbinary.business.init.db.InitDbHelperFactory_Package_References.InitDbHelperFactory_Access_Array;
   function "=" (Left, Right : InitDbHelperFactory_Access_Array) return Boolean renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References."=";
   subtype InitDbHelperFactory_Access_Array_Access is org.allbinary.business.init.db.InitDbHelperFactory_Package_References.InitDbHelperFactory_Access_Array_Access;
   function "=" (Left, Right : InitDbHelperFactory_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References."=";
   function Java_Box (Value : InitDbHelperFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References.Java_Box;
   function Java_Unbox_InitDbHelperFactory_Access_Array (Value : access Java_Object'Class) return InitDbHelperFactory_Access_Array_Access renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References.Java_Unbox_InitDbHelperFactory_Access_Array;
   subtype InitDbHelperFactory_Access_Array_Access_Array is org.allbinary.business.init.db.InitDbHelperFactory_Package_References.InitDbHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InitDbHelperFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References."=";
   subtype InitDbHelperFactory_Access_Array_Access_Array_Access is org.allbinary.business.init.db.InitDbHelperFactory_Package_References.InitDbHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitDbHelperFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References."=";
   function Java_Box (Value : InitDbHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References.Java_Box;
   function Java_Unbox_InitDbHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InitDbHelperFactory_Access_Array_Access_Array_Access renames org.allbinary.business.init.db.InitDbHelperFactory_Package_References.Java_Unbox_InitDbHelperFactory_Access_Array_Access_Array;

   type InitDbHelperFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out InitDbHelperFactory'Class);
   function Create return InitDbHelperFactory_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class);
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.business.init.db.InitDbHelperFactory_Package;


