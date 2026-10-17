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
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUser_Package is

   package User_Package renames org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type OrderStoreAdminUser is tagged;
   type OrderStoreAdminUser_Access is access all OrderStoreAdminUser'Class;
   type OrderStoreAdminUser_Access_Array is array (Natural range <>) of OrderStoreAdminUser_Access;
   type OrderStoreAdminUser_Access_Array_Access is access all OrderStoreAdminUser_Access_Array;

   type OrderStoreAdminUser is new User with null record;

   procedure Initialize (This : in out OrderStoreAdminUser'Class);
   function Create return OrderStoreAdminUser_Access;
   procedure validateSession (This : in out OrderStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out OrderStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);

end org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUser_Package;


