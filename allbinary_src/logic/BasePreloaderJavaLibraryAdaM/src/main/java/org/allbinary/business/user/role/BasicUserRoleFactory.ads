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
limited with org.allbinary.business.user.role.BasicUserRoleFactory_Package;
package org.allbinary.business.user.role.BasicUserRoleFactory_Package_References is
   type BasicUserRoleFactory_Access is access all org.allbinary.business.user.role.BasicUserRoleFactory_Package.BasicUserRoleFactory'Class;
   type BasicUserRoleFactory_Access_Array is array (Natural range <>) of BasicUserRoleFactory_Access;
   type BasicUserRoleFactory_Access_Array_Access is access all BasicUserRoleFactory_Access_Array;
   type BasicUserRoleFactory_Access_Array_Access_Array is array (Natural range <>) of BasicUserRoleFactory_Access_Array_Access;
   type BasicUserRoleFactory_Access_Array_Access_Array_Access is access all BasicUserRoleFactory_Access_Array_Access_Array;
   type BasicUserRoleFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUserRoleFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUserRoleFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUserRoleFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUserRoleFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUserRoleFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicUserRoleFactory_Access_Array_Object'Class then BasicUserRoleFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicUserRoleFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUserRoleFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUserRoleFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUserRoleFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUserRoleFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUserRoleFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicUserRoleFactory_Access_Array_Access_Array_Object'Class then BasicUserRoleFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.role.BasicUserRoleFactory_Package_References;

with org.allbinary.business.user.role.BasicUserRoleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;

package org.allbinary.business.user.role.BasicUserRoleFactory_Package is

   package Reference_Types is
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   use type BasicUserRole_Access;
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   use type BasicUserRole_Access_Array;
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access;
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   use type BasicUserRole_Access_Array_Access_Array;
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicUserRoleFactory_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access;
   function "=" (Left, Right : BasicUserRoleFactory_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References."=";
   subtype BasicUserRoleFactory_Access_Array is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array;
   function "=" (Left, Right : BasicUserRoleFactory_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References."=";
   subtype BasicUserRoleFactory_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access;
   function "=" (Left, Right : BasicUserRoleFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References."=";
   function Java_Box (Value : BasicUserRoleFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.Java_Box;
   function Java_Unbox_BasicUserRoleFactory_Access_Array (Value : access Java_Object'Class) return BasicUserRoleFactory_Access_Array_Access renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.Java_Unbox_BasicUserRoleFactory_Access_Array;
   subtype BasicUserRoleFactory_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUserRoleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References."=";
   subtype BasicUserRoleFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUserRoleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References."=";
   function Java_Box (Value : BasicUserRoleFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.Java_Box;
   function Java_Unbox_BasicUserRoleFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicUserRoleFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.Java_Unbox_BasicUserRoleFactory_Access_Array_Access_Array;

   type BasicUserRoleFactory is new Java_Object with record
      INACTIVITYTIMEOUT : Long_Long_Integer;
      CUSTOMERTIMEOUT : Long_Long_Integer;
      CUSTOMERMAXSESSIONTIME : Long_Long_Integer;
      MAXSESSIONTIME : Long_Long_Integer;
      INSTALLER : BasicUserRole_Access;
      ADMINISTRATOR : BasicUserRole_Access;
      CUSTOMER : BasicUserRole_Access;
      SUBSCRIBERCUSTOMER : BasicUserRole_Access;
      WHOLESALECUSTOMER : BasicUserRole_Access;
      STOREMANAGER : BasicUserRole_Access;
      PRODUCTMANAGER : BasicUserRole_Access;
      CUSTOMERMANAGER : BasicUserRole_Access;
      PAYMENTMANAGER : BasicUserRole_Access;
      ORDERMANAGER : BasicUserRole_Access;
      WEBMANAGER : BasicUserRole_Access;
      REVIEWER : BasicUserRole_Access;
      SHIPPING : BasicUserRole_Access;
      ADJUSTER : BasicUserRole_Access;
      WORKFLOWEDITOR : BasicUserRole_Access;
      WIZARD : BasicUserRole_Access;
      VIEWEDITOR : BasicUserRole_Access;
   end record;
   instance : BasicUserRoleFactory_Access;

   procedure Initialize (This : in out BasicUserRoleFactory'Class);
   function Create return BasicUserRoleFactory_Access;
   function getInstance return BasicUserRoleFactory_Access;

end org.allbinary.business.user.role.BasicUserRoleFactory_Package;


