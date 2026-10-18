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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type TransformInfoHttpInterface is interface and TransformInfoInterface;
   type TransformInfoHttpInterface_Access is access all TransformInfoHttpInterface'Class;
   type TransformInfoHttpInterface_Access_Array is array (Natural range <>) of TransformInfoHttpInterface_Access;
   type TransformInfoHttpInterface_Access_Array_Access is access all TransformInfoHttpInterface_Access_Array;
   function getWeblisketSession (This : in out TransformInfoHttpInterface) return WeblisketSessionInterface_Access is abstract;
   function getPageContext (This : in out TransformInfoHttpInterface) return PageContext_Access is abstract;
   function getPropertiesHashMap (This : in out TransformInfoHttpInterface) return HashMap_Access is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;


