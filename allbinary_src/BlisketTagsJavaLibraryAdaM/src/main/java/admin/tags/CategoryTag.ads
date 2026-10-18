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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.CategoryTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type CategoryTag is tagged;
   type CategoryTag_Access is access all CategoryTag'Class;
   type CategoryTag_Access_Array is array (Natural range <>) of CategoryTag_Access;
   type CategoryTag_Access_Array_Access is access all CategoryTag_Access_Array;
   type CategoryTag_Access_Array_Access_Array is array (Natural range <>) of CategoryTag_Access_Array_Access;
   type CategoryTag_Access_Array_Access_Array_Access is access all CategoryTag_Access_Array_Access_Array;

   type CategoryTag is new TableTag with record
      logUtil : LogUtil_Access;
      xsl : Unbounded_String;
   end record;

   procedure Initialize (This : in out CategoryTag'Class);
   function Create return CategoryTag_Access;
   procedure setXsl (This : in out CategoryTag; value : Unbounded_String);
   function viewCategory (This : in out CategoryTag) return Unbounded_String;
   function viewCategories (This : in out CategoryTag) return Unbounded_String;
   function doStartTag (This : in out CategoryTag) return Integer;

end admin.tags.CategoryTag_Package;


