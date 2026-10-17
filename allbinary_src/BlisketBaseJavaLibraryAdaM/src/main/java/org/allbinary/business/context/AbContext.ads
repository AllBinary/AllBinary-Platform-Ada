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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.context.AbContext_Package is

   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AbContext is tagged;
   type AbContext_Access is access all AbContext'Class;
   type AbContext_Access_Array is array (Natural range <>) of AbContext_Access;
   type AbContext_Access_Array_Access is access all AbContext_Access_Array;

   type AbContext is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      propertiesHashMap : HashMap_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out AbContext'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return AbContext_Access;
   function getWeblisketSession (This : in out AbContext) return WeblisketSessionInterface_Access;
   function getPageContext (This : in out AbContext) return PageContext_Access;
   function getPropertiesHashMap (This : in out AbContext) return HashMap_Access;

end org.allbinary.business.context.AbContext_Package;


