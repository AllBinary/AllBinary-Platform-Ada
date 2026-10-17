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
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.PropertiesTag_Package; use tags.PropertiesTag_Package;

package admin.tags.TableTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package PropertiesTag_Package renames Standard.tags.PropertiesTag_Package;

   type TableTag is tagged;
   type TableTag_Access is access all TableTag'Class;
   type TableTag_Access_Array is array (Natural range <>) of TableTag_Access;
   type TableTag_Access_Array_Access is access all TableTag_Access_Array;

   type TableTag is new PropertiesTag with record
      logUtil : LogUtil_Access;
      enabled : Unbounded_String;
      tagHelperFactoryInterface : TagHelperFactoryInterface_Access;
      tagRequestHelperFactoryInterface : TagHelperFactoryInterface_Access;
      requestObject : Java_Object_Access;
      current : Integer;
      total : Integer;
   end record;

   procedure Initialize (This : in out TableTag'Class);
   function Create return TableTag_Access;
   procedure setIsSelected (This : in out TableTag; enabled : Unbounded_String);
   function isEnabled (This : in out TableTag) return Boolean;
   procedure isEnabled (This : in out TableTag);
   procedure setTagHelperFactory (This : in out TableTag; tagHelperFactoryInterface : TagHelperFactoryInterface_Access);
   function getTagHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access;
   procedure getTagHelperFactoryInterface (This : in out TableTag);
   procedure setTagRequestHelperFactory (This : in out TableTag; tagHelperFactoryInterface : TagHelperFactoryInterface_Access);
   function getTagRequestHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access;
   procedure getTagRequestHelperFactoryInterface (This : in out TableTag);
   procedure setCurrent (This : in out TableTag; current : Integer);
   function getCurrent (This : in out TableTag) return Integer;
   procedure getCurrent (This : in out TableTag);
   procedure setTotal (This : in out TableTag; total : Integer);
   function getTotal (This : in out TableTag) return Integer;
   procedure getTotal (This : in out TableTag);
   function drop (This : in out TableTag) return Unbounded_String;
   procedure drop (This : in out TableTag);
   function create (This : in out TableTag) return Unbounded_String;
   procedure create (This : in out TableTag);
   function restore (This : in out TableTag) return Unbounded_String;
   procedure restore (This : in out TableTag);
   function backup (This : in out TableTag) return Unbounded_String;
   procedure backup (This : in out TableTag);
   function insert (This : in out TableTag) return Unbounded_String;
   procedure insert (This : in out TableTag);
   function delete (This : in out TableTag) return Unbounded_String;
   procedure delete (This : in out TableTag);
   function update (This : in out TableTag) return Unbounded_String;
   procedure update (This : in out TableTag);
   function doStartTag (This : in out TableTag) return Integer;
   procedure doStartTag (This : in out TableTag);

end admin.tags.TableTag_Package;


