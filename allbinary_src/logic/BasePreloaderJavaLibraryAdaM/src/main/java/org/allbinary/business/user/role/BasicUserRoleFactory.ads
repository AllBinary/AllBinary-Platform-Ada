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
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;

package org.allbinary.business.user.role.BasicUserRoleFactory_Package is


   type BasicUserRoleFactory is tagged;
   type BasicUserRoleFactory_Access is access all BasicUserRoleFactory'Class;
   type BasicUserRoleFactory_Access_Array is array (Natural range <>) of BasicUserRoleFactory_Access;
   type BasicUserRoleFactory_Access_Array_Access is access all BasicUserRoleFactory_Access_Array;
   type BasicUserRoleFactory_Access_Array_Access_Array is array (Natural range <>) of BasicUserRoleFactory_Access_Array_Access;
   type BasicUserRoleFactory_Access_Array_Access_Array_Access is access all BasicUserRoleFactory_Access_Array_Access_Array;

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


