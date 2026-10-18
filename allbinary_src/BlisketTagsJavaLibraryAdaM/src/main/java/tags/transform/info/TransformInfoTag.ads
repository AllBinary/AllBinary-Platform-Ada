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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.ModifyTag_Package; use tags.ModifyTag_Package;

package tags.transform.info.TransformInfoTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ModifyTag_Package renames Standard.tags.ModifyTag_Package;

   type TransformInfoTag is tagged;
   type TransformInfoTag_Access is access all TransformInfoTag'Class;
   type TransformInfoTag_Access_Array is array (Natural range <>) of TransformInfoTag_Access;
   type TransformInfoTag_Access_Array_Access is access all TransformInfoTag_Access_Array;
   type TransformInfoTag_Access_Array_Access_Array is array (Natural range <>) of TransformInfoTag_Access_Array_Access;
   type TransformInfoTag_Access_Array_Access_Array_Access is access all TransformInfoTag_Access_Array_Access_Array;

   type TransformInfoTag is new ModifyTag with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      storeName : Unbounded_String;
      objectFile : Unbounded_String;
      anyType : Unbounded_String;
      objectConfigFile : Unbounded_String;
      objectConfig : Unbounded_String;
      templateFile : Unbounded_String;
      template : Unbounded_String;
      dataFile : Unbounded_String;
      data : Unbounded_String;
      type_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoTag'Class);
   function Create return TransformInfoTag_Access;
   procedure Initialize (This : in out TransformInfoTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return TransformInfoTag_Access;
   procedure setName (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setStoreName (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setObjectFile (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setObject (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setTemplate (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setDataFile (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setData (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setObjectConfigFile (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setObjectConfig (This : in out TransformInfoTag; value : Unbounded_String);
   procedure setType (This : in out TransformInfoTag; value : Unbounded_String);
   function getName (This : in out TransformInfoTag) return Unbounded_String;
   function getObjectFile (This : in out TransformInfoTag) return Unbounded_String;
   function doStartTag (This : in out TransformInfoTag) return Integer;

end tags.transform.info.TransformInfoTag_Package;


