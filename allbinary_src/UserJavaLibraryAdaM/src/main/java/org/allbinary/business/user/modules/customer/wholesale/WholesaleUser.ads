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

package org.allbinary.business.user.modules.customer.wholesale.WholesaleUser_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type WholesaleUser is tagged;
   type WholesaleUser_Access is access all WholesaleUser'Class;
   type WholesaleUser_Access_Array is array (Natural range <>) of WholesaleUser_Access;
   type WholesaleUser_Access_Array_Access is access all WholesaleUser_Access_Array;

   type WholesaleUser is new User with null record;

   procedure Initialize (This : in out WholesaleUser'Class);
   function Create return WholesaleUser_Access;
   procedure Initialize (This : in out WholesaleUser'Class; userHashMap_Param : access HashMap'Class);
   function Create (userHashMap_Param : access HashMap'Class) return WholesaleUser_Access;
   procedure validateSession (This : in out WholesaleUser; weblisketSession_Param : access WeblisketSessionInterface'Class);
   procedure updateSession (This : in out WholesaleUser; weblisketSession_Param : access WeblisketSessionInterface'Class);

end org.allbinary.business.user.modules.customer.wholesale.WholesaleUser_Package;


