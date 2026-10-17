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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.storefront.statistics.StoreFrontStatisticsTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type StoreFrontStatisticsTag is tagged;
   type StoreFrontStatisticsTag_Access is access all StoreFrontStatisticsTag'Class;
   type StoreFrontStatisticsTag_Access_Array is array (Natural range <>) of StoreFrontStatisticsTag_Access;
   type StoreFrontStatisticsTag_Access_Array_Access is access all StoreFrontStatisticsTag_Access_Array;

   type StoreFrontStatisticsTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out StoreFrontStatisticsTag'Class);
   function Create return StoreFrontStatisticsTag_Access;
   function doStartTag (This : in out StoreFrontStatisticsTag) return Integer;
   procedure doStartTag (This : in out StoreFrontStatisticsTag);

end tags.admin.storefront.statistics.StoreFrontStatisticsTag_Package;


