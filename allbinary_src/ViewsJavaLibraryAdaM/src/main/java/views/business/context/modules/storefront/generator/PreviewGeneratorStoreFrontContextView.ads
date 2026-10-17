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
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package; use views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package;

package views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type PreviewGeneratorStoreFrontContextView is tagged;
   type PreviewGeneratorStoreFrontContextView_Access is access all PreviewGeneratorStoreFrontContextView'Class;
   type PreviewGeneratorStoreFrontContextView_Access_Array is array (Natural range <>) of PreviewGeneratorStoreFrontContextView_Access;
   type PreviewGeneratorStoreFrontContextView_Access_Array_Access is access all PreviewGeneratorStoreFrontContextView_Access_Array;

   type PreviewGeneratorStoreFrontContextView is new GeneratorStoreFrontContextView with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PreviewGeneratorStoreFrontContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PreviewGeneratorStoreFrontContextView_Access;
   function view (This : in out PreviewGeneratorStoreFrontContextView) return Unbounded_String;

end views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package;


