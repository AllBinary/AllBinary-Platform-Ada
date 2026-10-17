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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package is

   package WeblisketSession_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TransformInfoHttpComposite is tagged;
   type TransformInfoHttpComposite_Access is access all TransformInfoHttpComposite'Class;
   type TransformInfoHttpComposite_Access_Array is array (Natural range <>) of TransformInfoHttpComposite_Access;
   type TransformInfoHttpComposite_Access_Array_Access is access all TransformInfoHttpComposite_Access_Array;

   type TransformInfoHttpComposite is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoHttpInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttpComposite'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoHttpComposite_Access;
   function getTransformInfoInterface (This : in out TransformInfoHttpComposite) return TransformInfoInterface_Access;
   procedure getTransformInfoInterface (This : in out TransformInfoHttpComposite);
   function getWeblisketSession (This : in out TransformInfoHttpComposite) return WeblisketSession_Access;
   procedure getWeblisketSession (This : in out TransformInfoHttpComposite);
   function getPageContext (This : in out TransformInfoHttpComposite) return PageContext_Access;
   procedure getPageContext (This : in out TransformInfoHttpComposite);
   function getPropertiesHashMap (This : in out TransformInfoHttpComposite) return HashMap_Access;
   procedure getPropertiesHashMap (This : in out TransformInfoHttpComposite);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;


