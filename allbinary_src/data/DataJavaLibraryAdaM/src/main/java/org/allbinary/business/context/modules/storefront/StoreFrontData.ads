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

limited with org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
package org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References is
   type StoreFrontData_Access is access all org.allbinary.business.context.modules.storefront.StoreFrontData_Package.StoreFrontData'Class;
   type StoreFrontData_Access_Array is array (Natural range <>) of StoreFrontData_Access;
   type StoreFrontData_Access_Array_Access is access all StoreFrontData_Access_Array;
   type StoreFrontData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontData_Access_Array_Access;
   type StoreFrontData_Access_Array_Access_Array_Access is access all StoreFrontData_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References;

with org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.context.modules.storefront.StoreFrontData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontData_Access is org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References.StoreFrontData_Access;
   function "=" (Left, Right : StoreFrontData_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References."=";
   subtype StoreFrontData_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References.StoreFrontData_Access_Array;
   function "=" (Left, Right : StoreFrontData_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References."=";
   subtype StoreFrontData_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References.StoreFrontData_Access_Array_Access;
   function "=" (Left, Right : StoreFrontData_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References."=";
   subtype StoreFrontData_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References.StoreFrontData_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References."=";
   subtype StoreFrontData_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References.StoreFrontData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package_References."=";

   type StoreFrontData is new Java_Object with record
      CANCEL : Unbounded_String;
      SELECT_Id : Unbounded_String;
      INSTALL : Unbounded_String;
      INSTALL_COMPLETE : Unbounded_String;
      NAME : Unbounded_String;
      CURRENTHOSTNAME : Unbounded_String;
      CURRENTHOSTNAMEPATH : Unbounded_String;
      CURRENTHOMEHOSTNAME : Unbounded_String;
      CURRENTHOMEHOSTNAMEPATH : Unbounded_String;
      HOMEHOSTNAME : Unbounded_String;
      HOMEHOSTNAMEPATH : Unbounded_String;
      HOSTNAME : Unbounded_String;
      HOSTNAMEPATH : Unbounded_String;
      TESTHOMEHOSTNAME : Unbounded_String;
      TESTHOMEHOSTNAMEPATH : Unbounded_String;
      TESTHOSTNAME : Unbounded_String;
      TESTHOSTNAMEPATH : Unbounded_String;
      IMAGEPATH : Unbounded_String;
      STATICPATH : Unbounded_String;
      CATEGORYPATH : Unbounded_String;
      INVENTORYCONTROL : Unbounded_String;
      CONFIGURATION : Unbounded_String;
      SUBSTORES : Unbounded_String;
      TAGLOCATION : Unbounded_String;
      PACKAGELOCATION : Unbounded_String;
      FTP : Unbounded_String;
      FTPPATH : Unbounded_String;
      FTPUSERNAME : Unbounded_String;
      FTPPASSWORD : Unbounded_String;
      TESTFTP : Unbounded_String;
      TESTFTPPATH : Unbounded_String;
      TESTFTPUSERNAME : Unbounded_String;
      TESTFTPPASSWORD : Unbounded_String;
      SELECTSTORENAME : Unbounded_String;
   end record;
   instance : StoreFrontData_Access;

   procedure Initialize (This : in out StoreFrontData'Class);
   function Create return StoreFrontData_Access;
   function getInstance return StoreFrontData_Access;

end org.allbinary.business.context.modules.storefront.StoreFrontData_Package;


