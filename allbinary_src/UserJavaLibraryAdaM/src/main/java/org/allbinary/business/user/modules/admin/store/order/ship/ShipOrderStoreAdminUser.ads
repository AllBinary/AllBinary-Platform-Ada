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

package org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUser_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type ShipOrderStoreAdminUser is tagged;
   type ShipOrderStoreAdminUser_Access is access all ShipOrderStoreAdminUser'Class;
   type ShipOrderStoreAdminUser_Access_Array is array (Natural range <>) of ShipOrderStoreAdminUser_Access;
   type ShipOrderStoreAdminUser_Access_Array_Access is access all ShipOrderStoreAdminUser_Access_Array;

   type ShipOrderStoreAdminUser is new User with null record;

   procedure Initialize (This : in out ShipOrderStoreAdminUser'Class);
   function Create return ShipOrderStoreAdminUser_Access;
   procedure Initialize (This : in out ShipOrderStoreAdminUser'Class; userHashMap : HashMap_Access);
   function Create (userHashMap : HashMap_Access) return ShipOrderStoreAdminUser_Access;
   procedure validateSession (This : in out ShipOrderStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out ShipOrderStoreAdminUser; weblisketSession : WeblisketSessionInterface_Access);

end org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUser_Package;


