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

package admin.tags.StaticPagesTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type StaticPagesTag is tagged;
   type StaticPagesTag_Access is access all StaticPagesTag'Class;
   type StaticPagesTag_Access_Array is array (Natural range <>) of StaticPagesTag_Access;
   type StaticPagesTag_Access_Array_Access is access all StaticPagesTag_Access_Array;
   type StaticPagesTag_Access_Array_Access_Array is array (Natural range <>) of StaticPagesTag_Access_Array_Access;
   type StaticPagesTag_Access_Array_Access_Array_Access is access all StaticPagesTag_Access_Array_Access_Array;

   type StaticPagesTag is new TableTag with record
      logUtil : LogUtil_Access;
      xslFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesTag'Class);
   function Create return StaticPagesTag_Access;
   procedure setXsl (This : in out StaticPagesTag; value : Unbounded_String);
   function generateStaticPages (This : in out StaticPagesTag) return Unbounded_String;
   function makePublic (This : in out StaticPagesTag) return Unbounded_String;
   function doStartTag (This : in out StaticPagesTag) return Integer;

end admin.tags.StaticPagesTag_Package;


