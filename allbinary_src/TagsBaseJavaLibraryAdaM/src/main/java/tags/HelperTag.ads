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

limited with tags.HelperTag_Package;
package tags.HelperTag_Package_References is
   type HelperTag_Access is access all tags.HelperTag_Package.HelperTag'Class;
   type HelperTag_Access_Array is array (Natural range <>) of HelperTag_Access;
   type HelperTag_Access_Array_Access is access all HelperTag_Access_Array;
   type HelperTag_Access_Array_Access_Array is array (Natural range <>) of HelperTag_Access_Array_Access;
   type HelperTag_Access_Array_Access_Array_Access is access all HelperTag_Access_Array_Access_Array;
end tags.HelperTag_Package_References;

with tags.HelperTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with admin.taghelpers.TagHelperFactoryInterface_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.PropertiesTag_Package; use tags.PropertiesTag_Package;

package tags.HelperTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype TagHelperFactoryInterface_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access;
   use type TagHelperFactoryInterface_Access;
   subtype TagHelperFactoryInterface_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array;
   use type TagHelperFactoryInterface_Access_Array;
   subtype TagHelperFactoryInterface_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access;
   use type TagHelperFactoryInterface_Access_Array_Access;
   subtype TagHelperFactoryInterface_Access_Array_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array;
   use type TagHelperFactoryInterface_Access_Array_Access_Array;
   subtype TagHelperFactoryInterface_Access_Array_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array_Access;
   use type TagHelperFactoryInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype HelperTag_Access is tags.HelperTag_Package_References.HelperTag_Access;
   function "=" (Left, Right : HelperTag_Access) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array;
   function "=" (Left, Right : HelperTag_Access_Array) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access;
   function "=" (Left, Right : HelperTag_Access_Array_Access) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array;
   function "=" (Left, Right : HelperTag_Access_Array_Access_Array) return Boolean renames tags.HelperTag_Package_References."=";
   subtype HelperTag_Access_Array_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HelperTag_Access_Array_Access_Array_Access) return Boolean renames tags.HelperTag_Package_References."=";

   type HelperTag is new PropertiesTag with record
      logUtil : LogUtil_Access;
      tagHelperFactoryInterface : TagHelperFactoryInterface_Access;
      anyType : Java_Object_Access;
   end record;

   procedure Initialize (This : in out HelperTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return HelperTag_Access;
   procedure setHelper (This : in out HelperTag);
   function getHelper (This : in out HelperTag) return Java_Object_Access;
   function doEndTag (This : in out HelperTag) return Integer;

end tags.HelperTag_Package;


