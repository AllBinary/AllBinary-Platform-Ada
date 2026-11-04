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

limited with admin.taghelpers.BasicTextEmailHelper_Package;
package admin.taghelpers.BasicTextEmailHelper_Package_References is
   type BasicTextEmailHelper_Access is access all admin.taghelpers.BasicTextEmailHelper_Package.BasicTextEmailHelper'Class;
   type BasicTextEmailHelper_Access_Array is array (Natural range <>) of BasicTextEmailHelper_Access;
   type BasicTextEmailHelper_Access_Array_Access is access all BasicTextEmailHelper_Access_Array;
   type BasicTextEmailHelper_Access_Array_Access_Array is array (Natural range <>) of BasicTextEmailHelper_Access_Array_Access;
   type BasicTextEmailHelper_Access_Array_Access_Array_Access is access all BasicTextEmailHelper_Access_Array_Access_Array;
end admin.taghelpers.BasicTextEmailHelper_Package_References;

with admin.taghelpers.BasicTextEmailHelper_Package_References;
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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.BasicTextEmailHelper_Package is

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


   subtype BasicTextEmailHelper_Access is admin.taghelpers.BasicTextEmailHelper_Package_References.BasicTextEmailHelper_Access;
   function "=" (Left, Right : BasicTextEmailHelper_Access) return Boolean renames admin.taghelpers.BasicTextEmailHelper_Package_References."=";
   subtype BasicTextEmailHelper_Access_Array is admin.taghelpers.BasicTextEmailHelper_Package_References.BasicTextEmailHelper_Access_Array;
   function "=" (Left, Right : BasicTextEmailHelper_Access_Array) return Boolean renames admin.taghelpers.BasicTextEmailHelper_Package_References."=";
   subtype BasicTextEmailHelper_Access_Array_Access is admin.taghelpers.BasicTextEmailHelper_Package_References.BasicTextEmailHelper_Access_Array_Access;
   function "=" (Left, Right : BasicTextEmailHelper_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTextEmailHelper_Package_References."=";
   subtype BasicTextEmailHelper_Access_Array_Access_Array is admin.taghelpers.BasicTextEmailHelper_Package_References.BasicTextEmailHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTextEmailHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicTextEmailHelper_Package_References."=";
   subtype BasicTextEmailHelper_Access_Array_Access_Array_Access is admin.taghelpers.BasicTextEmailHelper_Package_References.BasicTextEmailHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTextEmailHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTextEmailHelper_Package_References."=";

   type BasicTextEmailHelper is new TagHelper with record
      abeClientInformation : AbeClientInformationInterface_Access;
      hashMap : HashMap_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out BasicTextEmailHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicTextEmailHelper_Access;
   procedure send (This : in out BasicTextEmailHelper);

end admin.taghelpers.BasicTextEmailHelper_Package;


