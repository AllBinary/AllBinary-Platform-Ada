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
limited with org.allbinary.business.context.AbContext_Package;
package org.allbinary.business.context.AbContext_Package_References is
   type AbContext_Access is access all org.allbinary.business.context.AbContext_Package.AbContext'Class;
   type AbContext_Access_Array is array (Natural range <>) of AbContext_Access;
   type AbContext_Access_Array_Access is access all AbContext_Access_Array;
   type AbContext_Access_Array_Access_Array is array (Natural range <>) of AbContext_Access_Array_Access;
   type AbContext_Access_Array_Access_Array_Access is access all AbContext_Access_Array_Access_Array;
   type AbContext_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbContext_Access_Array_Access;
   end record;
   function Java_Box (Value : AbContext_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbContext_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbContext_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbContext_Access_Array_Access is (if Value /= null and then Value.all in AbContext_Access_Array_Object'Class then AbContext_Access_Array_Object'Class (Value.all).Value else null);
   type AbContext_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbContext_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbContext_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbContext_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbContext_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbContext_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbContext_Access_Array_Access_Array_Object'Class then AbContext_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.AbContext_Package_References;

with org.allbinary.business.context.AbContext_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.business.context.AbContext_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AbContext_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access;
   function "=" (Left, Right : AbContext_Access) return Boolean renames org.allbinary.business.context.AbContext_Package_References."=";
   subtype AbContext_Access_Array is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array;
   function "=" (Left, Right : AbContext_Access_Array) return Boolean renames org.allbinary.business.context.AbContext_Package_References."=";
   subtype AbContext_Access_Array_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access;
   function "=" (Left, Right : AbContext_Access_Array_Access) return Boolean renames org.allbinary.business.context.AbContext_Package_References."=";
   function Java_Box (Value : AbContext_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.AbContext_Package_References.Java_Box;
   function Java_Unbox_AbContext_Access_Array (Value : access Java_Object'Class) return AbContext_Access_Array_Access renames org.allbinary.business.context.AbContext_Package_References.Java_Unbox_AbContext_Access_Array;
   subtype AbContext_Access_Array_Access_Array is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access_Array;
   function "=" (Left, Right : AbContext_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.AbContext_Package_References."=";
   subtype AbContext_Access_Array_Access_Array_Access is org.allbinary.business.context.AbContext_Package_References.AbContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbContext_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.AbContext_Package_References."=";
   function Java_Box (Value : AbContext_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.AbContext_Package_References.Java_Box;
   function Java_Unbox_AbContext_Access_Array_Access_Array (Value : access Java_Object'Class) return AbContext_Access_Array_Access_Array_Access renames org.allbinary.business.context.AbContext_Package_References.Java_Unbox_AbContext_Access_Array_Access_Array;

   type AbContext is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      propertiesHashMap : HashMap_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out AbContext'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AbContext_Access;
   function getWeblisketSession (This : in out AbContext) return WeblisketSessionInterface_Access;
   function getPageContext (This : in out AbContext) return PageContext_Access;
   function getPropertiesHashMap (This : in out AbContext) return HashMap_Access;

end org.allbinary.business.context.AbContext_Package;


