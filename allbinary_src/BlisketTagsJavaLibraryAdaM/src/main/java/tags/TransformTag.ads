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
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with taghelpers.ViewHelperFactory_Package; use taghelpers.ViewHelperFactory_Package;
with tags.transform.info.TransformInfoTag_Package; use tags.transform.info.TransformInfoTag_Package;

package tags.TransformTag_Package is

   package TagHelperFactoryInterface_Package renames admin.taghelpers.TagHelperFactoryInterface_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ViewHelperFactory_Package renames taghelpers.ViewHelperFactory_Package;
   package TransformInfoTag_Package renames tags.transform.info.TransformInfoTag_Package;

   type TransformTag is tagged;
   type TransformTag_Access is access all TransformTag'Class;
   type TransformTag_Access_Array is array (Natural range <>) of TransformTag_Access;
   type TransformTag_Access_Array_Access is access all TransformTag_Access_Array;

   type TransformTag is new TransformInfoTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformTag'Class);
   function Create return TransformTag_Access;
   function view (This : in out TransformTag) return Unbounded_String;
   procedure view (This : in out TransformTag);
   function doStartTag (This : in out TransformTag) return Integer;
   procedure doStartTag (This : in out TransformTag);

end tags.TransformTag_Package;


