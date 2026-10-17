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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package taghelpers.OrderHistoryHelperFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OrderHistoryHelperFactory is tagged;
   type OrderHistoryHelperFactory_Access is access all OrderHistoryHelperFactory'Class;
   type OrderHistoryHelperFactory_Access_Array is array (Natural range <>) of OrderHistoryHelperFactory_Access;
   type OrderHistoryHelperFactory_Access_Array_Access is access all OrderHistoryHelperFactory_Access_Array;

   type OrderHistoryHelperFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out OrderHistoryHelperFactory'Class);
   function Create return OrderHistoryHelperFactory_Access;
   function getInstance (This : in out OrderHistoryHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access;
   procedure getInstance (This : in out OrderHistoryHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access);

end taghelpers.OrderHistoryHelperFactory_Package;


