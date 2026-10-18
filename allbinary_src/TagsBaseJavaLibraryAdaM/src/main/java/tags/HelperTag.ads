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
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.PropertiesTag_Package; use tags.PropertiesTag_Package;

package tags.HelperTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type HelperTag is tagged;
   type HelperTag_Access is access all HelperTag'Class;
   type HelperTag_Access_Array is array (Natural range <>) of HelperTag_Access;
   type HelperTag_Access_Array_Access is access all HelperTag_Access_Array;
   type HelperTag_Access_Array_Access_Array is array (Natural range <>) of HelperTag_Access_Array_Access;
   type HelperTag_Access_Array_Access_Array_Access is access all HelperTag_Access_Array_Access_Array;

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


