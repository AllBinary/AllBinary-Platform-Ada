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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package tags.ModifyTag_Package is

   package TagHelperFactoryInterface_Package renames admin.taghelpers.TagHelperFactoryInterface_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ModifyTag is tagged;
   type ModifyTag_Access is access all ModifyTag'Class;
   type ModifyTag_Access_Array is array (Natural range <>) of ModifyTag_Access;
   type ModifyTag_Access_Array_Access is access all ModifyTag_Access_Array;

   type ModifyTag is new HelperTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ModifyTag'Class; tagHelperFactoryInterface : TagHelperFactoryInterface_Access);
   function Create (tagHelperFactoryInterface : TagHelperFactoryInterface_Access) return ModifyTag_Access;
   function insert (This : in out ModifyTag) return Unbounded_String;
   procedure insert (This : in out ModifyTag);
   function delete (This : in out ModifyTag) return Unbounded_String;
   procedure delete (This : in out ModifyTag);
   function update (This : in out ModifyTag) return Unbounded_String;
   procedure update (This : in out ModifyTag);
   function doStartTag (This : in out ModifyTag) return Integer;
   procedure doStartTag (This : in out ModifyTag);

end tags.ModifyTag_Package;


