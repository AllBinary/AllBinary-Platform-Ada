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
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References is
   type TransformInfoHttpInterface_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package.TransformInfoHttpInterface'Class;
   type TransformInfoHttpInterface_Access_Array is array (Natural range <>) of TransformInfoHttpInterface_Access;
   type TransformInfoHttpInterface_Access_Array_Access is access all TransformInfoHttpInterface_Access_Array;
   type TransformInfoHttpInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpInterface_Access_Array_Access;
   type TransformInfoHttpInterface_Access_Array_Access_Array_Access is access all TransformInfoHttpInterface_Access_Array_Access_Array;
   type TransformInfoHttpInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpInterface_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpInterface_Access_Array_Object'Class then TransformInfoHttpInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpInterface_Access_Array_Access_Array_Object'Class then TransformInfoHttpInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References;
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
limited with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package Reference_Types is
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   use type WeblisketSessionInterface_Access;
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   use type WeblisketSessionInterface_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access;
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   use type WeblisketSessionInterface_Access_Array_Access_Array;
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   use type WeblisketSessionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInfoHttpInterface is interface and TransformInfoInterface;
   subtype TransformInfoHttpInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access;
   function "=" (Left, Right : TransformInfoHttpInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References."=";
   subtype TransformInfoHttpInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array;
   function "=" (Left, Right : TransformInfoHttpInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References."=";
   subtype TransformInfoHttpInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References."=";
   function Java_Box (Value : TransformInfoHttpInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpInterface_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpInterface_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.Java_Unbox_TransformInfoHttpInterface_Access_Array;
   subtype TransformInfoHttpInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References."=";
   subtype TransformInfoHttpInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.TransformInfoHttpInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References."=";
   function Java_Box (Value : TransformInfoHttpInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package_References.Java_Unbox_TransformInfoHttpInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransformInfoHttpInterface (Value : TransformInfoHttpInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getWeblisketSession (This : in out TransformInfoHttpInterface) return WeblisketSessionInterface_Access is abstract;
   function getPageContext (This : in out TransformInfoHttpInterface) return PageContext_Access is abstract;
   function getPropertiesHashMap (This : in out TransformInfoHttpInterface) return HashMap_Access is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;


