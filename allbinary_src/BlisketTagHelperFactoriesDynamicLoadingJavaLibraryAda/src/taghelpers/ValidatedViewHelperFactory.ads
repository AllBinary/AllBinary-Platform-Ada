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
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;

package taghelpers.ValidatedViewHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;

   type ValidatedViewHelperFactory is tagged;
   type ValidatedViewHelperFactory_Access is access all ValidatedViewHelperFactory'Class;
   type ValidatedViewHelperFactory_Access_Array is array (Natural range <>) of ValidatedViewHelperFactory_Access;
   type ValidatedViewHelperFactory_Access_Array_Access is access all ValidatedViewHelperFactory_Access_Array;
   type ValidatedViewHelperFactory_Access_Array_Access_Array is array (Natural range <>) of ValidatedViewHelperFactory_Access_Array_Access;
   type ValidatedViewHelperFactory_Access_Array_Access_Array_Access is access all ValidatedViewHelperFactory_Access_Array_Access_Array;

   type ValidatedViewHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out ValidatedViewHelperFactory'Class);
   function Create return ValidatedViewHelperFactory_Access;
   function getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out ValidatedViewHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end taghelpers.ValidatedViewHelperFactory_Package;


