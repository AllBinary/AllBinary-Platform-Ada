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
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.BasicTextEmailTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;

   type BasicTextEmailTag is tagged;
   type BasicTextEmailTag_Access is access all BasicTextEmailTag'Class;
   type BasicTextEmailTag_Access_Array is array (Natural range <>) of BasicTextEmailTag_Access;
   type BasicTextEmailTag_Access_Array_Access is access all BasicTextEmailTag_Access_Array;
   type BasicTextEmailTag_Access_Array_Access_Array is array (Natural range <>) of BasicTextEmailTag_Access_Array_Access;
   type BasicTextEmailTag_Access_Array_Access_Array_Access is access all BasicTextEmailTag_Access_Array_Access_Array;

   type BasicTextEmailTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      subject : Unbounded_String;
      body_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicTextEmailTag'Class);
   function Create return BasicTextEmailTag_Access;
   procedure setSubject (This : in out BasicTextEmailTag; value : Unbounded_String);
   procedure setBody (This : in out BasicTextEmailTag; value : Unbounded_String);
   function send (This : in out BasicTextEmailTag) return Unbounded_String;
   function doStartTag (This : in out BasicTextEmailTag) return Integer;

end admin.tags.BasicTextEmailTag_Package;


