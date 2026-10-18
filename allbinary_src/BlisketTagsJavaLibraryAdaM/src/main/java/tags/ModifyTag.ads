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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package tags.ModifyTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ModifyTag is tagged;
   type ModifyTag_Access is access all ModifyTag'Class;
   type ModifyTag_Access_Array is array (Natural range <>) of ModifyTag_Access;
   type ModifyTag_Access_Array_Access is access all ModifyTag_Access_Array;
   type ModifyTag_Access_Array_Access_Array is array (Natural range <>) of ModifyTag_Access_Array_Access;
   type ModifyTag_Access_Array_Access_Array_Access is access all ModifyTag_Access_Array_Access_Array;

   type ModifyTag is new HelperTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ModifyTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return ModifyTag_Access;
   function insert (This : in out ModifyTag) return Unbounded_String;
   function delete (This : in out ModifyTag) return Unbounded_String;
   function update (This : in out ModifyTag) return Unbounded_String;
   function doStartTag (This : in out ModifyTag) return Integer;

end tags.ModifyTag_Package;


