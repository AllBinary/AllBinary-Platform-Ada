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
with org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package; use org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package is

   package AffiliateSales_Package renames Standard.org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type AffiliateUser is tagged;
   type AffiliateUser_Access is access all AffiliateUser'Class;
   type AffiliateUser_Access_Array is array (Natural range <>) of AffiliateUser_Access;
   type AffiliateUser_Access_Array_Access is access all AffiliateUser_Access_Array;

   type AffiliateUser is new User with record
      affiliateSales : AffiliateSales_Access;
   end record;

   procedure Initialize (This : in out AffiliateUser'Class);
   function Create return AffiliateUser_Access;
   procedure Initialize (This : in out AffiliateUser'Class; userHashMap_Param : access HashMap'Class);
   function Create (userHashMap_Param : access HashMap'Class) return AffiliateUser_Access;
   procedure validateSession (This : in out AffiliateUser; weblisketSession_Param : access WeblisketSessionInterface'Class);
   procedure updateSession (This : in out AffiliateUser; weblisketSession_Param : access WeblisketSessionInterface'Class);
   function isSessionValid (This : in out AffiliateUser) return Boolean;

end org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package;


