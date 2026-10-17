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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServlet_Package; use javax.servlet.http.HttpServlet_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.CloudStreamUtil_Package; use org.allbinary.logic.io.CloudStreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.servlet.BlisketServletUtil_Package; use org.allbinary.servlet.BlisketServletUtil_Package;

package org.allbinary.servlet.CloudImageServlet_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CloudStreamUtil_Package renames Standard.org.allbinary.logic.io.CloudStreamUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CloudImageServlet is tagged;
   type CloudImageServlet_Access is access all CloudImageServlet'Class;
   type CloudImageServlet_Access_Array is array (Natural range <>) of CloudImageServlet_Access;
   type CloudImageServlet_Access_Array_Access is access all CloudImageServlet_Access_Array;

   type CloudImageServlet is new HttpServlet with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CloudImageServlet'Class);
   function Create return CloudImageServlet_Access;
   procedure processRequest (This : in out CloudImageServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure doGet (This : in out CloudImageServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   procedure doPost (This : in out CloudImageServlet; request : HttpServletRequest_Access; response : HttpServletResponse_Access);
   function getServletInfo (This : in out CloudImageServlet) return Unbounded_String;

end org.allbinary.servlet.CloudImageServlet_Package;


