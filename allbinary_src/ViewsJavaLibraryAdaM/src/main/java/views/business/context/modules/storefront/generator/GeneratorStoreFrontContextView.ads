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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package; use org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformsGeneratorUtil_Package renames Standard.org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type GeneratorStoreFrontContextView is tagged;
   type GeneratorStoreFrontContextView_Access is access all GeneratorStoreFrontContextView'Class;
   type GeneratorStoreFrontContextView_Access_Array is array (Natural range <>) of GeneratorStoreFrontContextView_Access;
   type GeneratorStoreFrontContextView_Access_Array_Access is access all GeneratorStoreFrontContextView_Access_Array;

   type GeneratorStoreFrontContextView is new HttpStoreComponentView with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out GeneratorStoreFrontContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GeneratorStoreFrontContextView_Access;
   function view (This : in out GeneratorStoreFrontContextView; group : Unbounded_String) return Unbounded_String;
   procedure view (This : in out GeneratorStoreFrontContextView; group : Unbounded_String);
   function view (This : in out GeneratorStoreFrontContextView) return Unbounded_String;

end views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package;


