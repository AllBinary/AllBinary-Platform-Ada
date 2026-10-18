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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUser_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type OrderStoreAdminUser is tagged;
   type OrderStoreAdminUser_Access is access all OrderStoreAdminUser'Class;
   type OrderStoreAdminUser_Access_Array is array (Natural range <>) of OrderStoreAdminUser_Access;
   type OrderStoreAdminUser_Access_Array_Access is access all OrderStoreAdminUser_Access_Array;
   type OrderStoreAdminUser_Access_Array_Access_Array is array (Natural range <>) of OrderStoreAdminUser_Access_Array_Access;
   type OrderStoreAdminUser_Access_Array_Access_Array_Access is access all OrderStoreAdminUser_Access_Array_Access_Array;

   type OrderStoreAdminUser is new User_Package.User with null record;

   procedure Initialize (This : in out OrderStoreAdminUser'Class);
   function Create return OrderStoreAdminUser_Access;
   procedure Initialize (This : in out OrderStoreAdminUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return OrderStoreAdminUser_Access;
   procedure validateSession (This : in out OrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);
   procedure updateSession (This : in out OrderStoreAdminUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);

end org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUser_Package;


