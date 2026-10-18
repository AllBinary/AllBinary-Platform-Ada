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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.CustomLoaderTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;

   type CustomLoaderTag is tagged;
   type CustomLoaderTag_Access is access all CustomLoaderTag'Class;
   type CustomLoaderTag_Access_Array is array (Natural range <>) of CustomLoaderTag_Access;
   type CustomLoaderTag_Access_Array_Access is access all CustomLoaderTag_Access_Array;
   type CustomLoaderTag_Access_Array_Access_Array is array (Natural range <>) of CustomLoaderTag_Access_Array_Access;
   type CustomLoaderTag_Access_Array_Access_Array_Access is access all CustomLoaderTag_Access_Array_Access_Array;

   type CustomLoaderTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      webappPath : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out CustomLoaderTag'Class);
   function Create return CustomLoaderTag_Access;
   procedure setCommand (This : in out CustomLoaderTag; command : Unbounded_String);
   procedure setWebappPath (This : in out CustomLoaderTag; value : Unbounded_String);
   procedure setCustomLoaderWebappPath (This : in out CustomLoaderTag);
   function doStartTag (This : in out CustomLoaderTag) return Integer;

end admin.tags.CustomLoaderTag_Package;


