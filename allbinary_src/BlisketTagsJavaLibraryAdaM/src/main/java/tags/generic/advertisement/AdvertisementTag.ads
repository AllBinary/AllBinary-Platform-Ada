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
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.advertisement.AdvertisementTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type AdvertisementTag is tagged;
   type AdvertisementTag_Access is access all AdvertisementTag'Class;
   type AdvertisementTag_Access_Array is array (Natural range <>) of AdvertisementTag_Access;
   type AdvertisementTag_Access_Array_Access is access all AdvertisementTag_Access_Array;

   type AdvertisementTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out AdvertisementTag'Class);
   function Create return AdvertisementTag_Access;
   function doStartTag (This : in out AdvertisementTag) return Integer;

end tags.generic_Id.advertisement.AdvertisementTag_Package;


