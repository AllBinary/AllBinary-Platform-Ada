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

limited with org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package;
package org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References is
   type AffiliateUser_Access is access all org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package.AffiliateUser'Class;
   type AffiliateUser_Access_Array is array (Natural range <>) of AffiliateUser_Access;
   type AffiliateUser_Access_Array_Access is access all AffiliateUser_Access_Array;
   type AffiliateUser_Access_Array_Access_Array is array (Natural range <>) of AffiliateUser_Access_Array_Access;
   type AffiliateUser_Access_Array_Access_Array_Access is access all AffiliateUser_Access_Array_Access_Array;
end org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References;

with org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package;
with org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;

package org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AffiliateSales_Package renames Standard.org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package Reference_Types is
   subtype AffiliateSales_Access is org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References.AffiliateSales_Access;
   use type AffiliateSales_Access;
   subtype AffiliateSales_Access_Array is org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References.AffiliateSales_Access_Array;
   use type AffiliateSales_Access_Array;
   subtype AffiliateSales_Access_Array_Access is org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References.AffiliateSales_Access_Array_Access;
   use type AffiliateSales_Access_Array_Access;
   subtype AffiliateSales_Access_Array_Access_Array is org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References.AffiliateSales_Access_Array_Access_Array;
   use type AffiliateSales_Access_Array_Access_Array;
   subtype AffiliateSales_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.affiliate.sales.AffiliateSales_Package_References.AffiliateSales_Access_Array_Access_Array_Access;
   use type AffiliateSales_Access_Array_Access_Array_Access;
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   use type WeblisketSessionInterface_Access;
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   use type WeblisketSessionInterface_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access;
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   use type WeblisketSessionInterface_Access_Array_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AffiliateUser_Access is org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References.AffiliateUser_Access;
   function "=" (Left, Right : AffiliateUser_Access) return Boolean renames org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References."=";
   subtype AffiliateUser_Access_Array is org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References.AffiliateUser_Access_Array;
   function "=" (Left, Right : AffiliateUser_Access_Array) return Boolean renames org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References."=";
   subtype AffiliateUser_Access_Array_Access is org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References.AffiliateUser_Access_Array_Access;
   function "=" (Left, Right : AffiliateUser_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References."=";
   subtype AffiliateUser_Access_Array_Access_Array is org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References.AffiliateUser_Access_Array_Access_Array;
   function "=" (Left, Right : AffiliateUser_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References."=";
   subtype AffiliateUser_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References.AffiliateUser_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AffiliateUser_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package_References."=";

   type AffiliateUser is new User_Package.User with record
      affiliateSales : AffiliateSales_Access;
   end record;

   procedure Initialize (This : in out AffiliateUser'Class);
   function Create return AffiliateUser_Access;
   procedure Initialize (This : in out AffiliateUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return AffiliateUser_Access;
   procedure validateSession (This : in out AffiliateUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);
   procedure updateSession (This : in out AffiliateUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class);
   function isSessionValid (This : in out AffiliateUser) return Boolean;

end org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package;


