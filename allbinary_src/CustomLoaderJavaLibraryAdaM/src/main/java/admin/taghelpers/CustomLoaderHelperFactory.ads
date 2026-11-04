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

limited with admin.taghelpers.CustomLoaderHelperFactory_Package;
package admin.taghelpers.CustomLoaderHelperFactory_Package_References is
   type CustomLoaderHelperFactory_Access is access all admin.taghelpers.CustomLoaderHelperFactory_Package.CustomLoaderHelperFactory'Class;
   type CustomLoaderHelperFactory_Access_Array is array (Natural range <>) of CustomLoaderHelperFactory_Access;
   type CustomLoaderHelperFactory_Access_Array_Access is access all CustomLoaderHelperFactory_Access_Array;
   type CustomLoaderHelperFactory_Access_Array_Access_Array is array (Natural range <>) of CustomLoaderHelperFactory_Access_Array_Access;
   type CustomLoaderHelperFactory_Access_Array_Access_Array_Access is access all CustomLoaderHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.CustomLoaderHelperFactory_Package_References;

with admin.taghelpers.CustomLoaderHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;

package admin.taghelpers.CustomLoaderHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CustomLoaderHelperFactory_Access is admin.taghelpers.CustomLoaderHelperFactory_Package_References.CustomLoaderHelperFactory_Access;
   function "=" (Left, Right : CustomLoaderHelperFactory_Access) return Boolean renames admin.taghelpers.CustomLoaderHelperFactory_Package_References."=";
   subtype CustomLoaderHelperFactory_Access_Array is admin.taghelpers.CustomLoaderHelperFactory_Package_References.CustomLoaderHelperFactory_Access_Array;
   function "=" (Left, Right : CustomLoaderHelperFactory_Access_Array) return Boolean renames admin.taghelpers.CustomLoaderHelperFactory_Package_References."=";
   subtype CustomLoaderHelperFactory_Access_Array_Access is admin.taghelpers.CustomLoaderHelperFactory_Package_References.CustomLoaderHelperFactory_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.CustomLoaderHelperFactory_Package_References."=";
   subtype CustomLoaderHelperFactory_Access_Array_Access_Array is admin.taghelpers.CustomLoaderHelperFactory_Package_References.CustomLoaderHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomLoaderHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.CustomLoaderHelperFactory_Package_References."=";
   subtype CustomLoaderHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.CustomLoaderHelperFactory_Package_References.CustomLoaderHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.CustomLoaderHelperFactory_Package_References."=";

   type CustomLoaderHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out CustomLoaderHelperFactory'Class);
   function Create return CustomLoaderHelperFactory_Access;
   function getInstance (This : in out CustomLoaderHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out CustomLoaderHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (This : in out CustomLoaderHelperFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Java_Object_Access;
   procedure getInstance (This : in out CustomLoaderHelperFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end admin.taghelpers.CustomLoaderHelperFactory_Package;


