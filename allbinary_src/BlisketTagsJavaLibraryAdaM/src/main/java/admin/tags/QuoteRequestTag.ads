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

package admin.tags.QuoteRequestTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type QuoteRequestTag is tagged;
   type QuoteRequestTag_Access is access all QuoteRequestTag'Class;
   type QuoteRequestTag_Access_Array is array (Natural range <>) of QuoteRequestTag_Access;
   type QuoteRequestTag_Access_Array_Access is access all QuoteRequestTag_Access_Array;
   type QuoteRequestTag_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestTag_Access_Array_Access;
   type QuoteRequestTag_Access_Array_Access_Array_Access is access all QuoteRequestTag_Access_Array_Access_Array;

   type QuoteRequestTag is new TableTag with record
      logUtil : LogUtil_Access;
      storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestTag'Class);
   function Create return QuoteRequestTag_Access;
   procedure setStoreName (This : in out QuoteRequestTag; storeName : Unbounded_String);
   function email (This : in out QuoteRequestTag) return Unbounded_String;
   function doStartTag (This : in out QuoteRequestTag) return Integer;

end admin.tags.QuoteRequestTag_Package;


