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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References is
   type TransformInfoHttpComposite_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package.TransformInfoHttpComposite'Class;
   type TransformInfoHttpComposite_Access_Array is array (Natural range <>) of TransformInfoHttpComposite_Access;
   type TransformInfoHttpComposite_Access_Array_Access is access all TransformInfoHttpComposite_Access_Array;
   type TransformInfoHttpComposite_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpComposite_Access_Array_Access;
   type TransformInfoHttpComposite_Access_Array_Access_Array_Access is access all TransformInfoHttpComposite_Access_Array_Access_Array;
   type TransformInfoHttpComposite_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpComposite_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpComposite_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpComposite_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpComposite_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpComposite_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpComposite_Access_Array_Object'Class then TransformInfoHttpComposite_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpComposite_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpComposite_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpComposite_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpComposite_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpComposite_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpComposite_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpComposite_Access_Array_Access_Array_Object'Class then TransformInfoHttpComposite_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References;
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
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   use type WeblisketSession_Access;
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   use type WeblisketSession_Access_Array;
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access;
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   use type WeblisketSession_Access_Array_Access_Array;
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype TransformInfoHttpInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access;
   use type TransformInfoHttpInterface_Access;
   subtype TransformInfoHttpInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array;
   use type TransformInfoHttpInterface_Access_Array;
   subtype TransformInfoHttpInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access;
   use type TransformInfoHttpInterface_Access_Array_Access;
   subtype TransformInfoHttpInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array;
   use type TransformInfoHttpInterface_Access_Array_Access_Array;
   subtype TransformInfoHttpInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   use type TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoHttpComposite_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.TransformInfoHttpComposite_Access;
   function "=" (Left, Right : TransformInfoHttpComposite_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References."=";
   subtype TransformInfoHttpComposite_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.TransformInfoHttpComposite_Access_Array;
   function "=" (Left, Right : TransformInfoHttpComposite_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References."=";
   subtype TransformInfoHttpComposite_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.TransformInfoHttpComposite_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpComposite_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References."=";
   function Java_Box (Value : TransformInfoHttpComposite_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpComposite_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpComposite_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.Java_Unbox_TransformInfoHttpComposite_Access_Array;
   subtype TransformInfoHttpComposite_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.TransformInfoHttpComposite_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References."=";
   subtype TransformInfoHttpComposite_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.TransformInfoHttpComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References."=";
   function Java_Box (Value : TransformInfoHttpComposite_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpComposite_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpComposite_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package_References.Java_Unbox_TransformInfoHttpComposite_Access_Array_Access_Array;

   type TransformInfoHttpComposite is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoHttpInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttpComposite'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoHttpComposite_Access;
   function getTransformInfoInterface (This : in out TransformInfoHttpComposite) return TransformInfoInterface_Access;
   function getWeblisketSession (This : in out TransformInfoHttpComposite) return WeblisketSession_Access;
   function getPageContext (This : in out TransformInfoHttpComposite) return PageContext_Access;
   function getPropertiesHashMap (This : in out TransformInfoHttpComposite) return HashMap_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;


