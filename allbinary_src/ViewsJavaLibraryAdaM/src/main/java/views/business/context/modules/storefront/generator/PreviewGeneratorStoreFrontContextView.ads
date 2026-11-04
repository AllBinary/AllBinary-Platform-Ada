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

limited with views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package;
package views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References is
   type PreviewGeneratorStoreFrontContextView_Access is access all views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package.PreviewGeneratorStoreFrontContextView'Class;
   type PreviewGeneratorStoreFrontContextView_Access_Array is array (Natural range <>) of PreviewGeneratorStoreFrontContextView_Access;
   type PreviewGeneratorStoreFrontContextView_Access_Array_Access is access all PreviewGeneratorStoreFrontContextView_Access_Array;
   type PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array is array (Natural range <>) of PreviewGeneratorStoreFrontContextView_Access_Array_Access;
   type PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array_Access is access all PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array;
end views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References;

with views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package; use views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package;

package views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
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


   subtype PreviewGeneratorStoreFrontContextView_Access is views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References.PreviewGeneratorStoreFrontContextView_Access;
   function "=" (Left, Right : PreviewGeneratorStoreFrontContextView_Access) return Boolean renames views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References."=";
   subtype PreviewGeneratorStoreFrontContextView_Access_Array is views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References.PreviewGeneratorStoreFrontContextView_Access_Array;
   function "=" (Left, Right : PreviewGeneratorStoreFrontContextView_Access_Array) return Boolean renames views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References."=";
   subtype PreviewGeneratorStoreFrontContextView_Access_Array_Access is views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References.PreviewGeneratorStoreFrontContextView_Access_Array_Access;
   function "=" (Left, Right : PreviewGeneratorStoreFrontContextView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References."=";
   subtype PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array is views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References.PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array;
   function "=" (Left, Right : PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References."=";
   subtype PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References.PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreviewGeneratorStoreFrontContextView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package_References."=";

   type PreviewGeneratorStoreFrontContextView is new GeneratorStoreFrontContextView with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PreviewGeneratorStoreFrontContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PreviewGeneratorStoreFrontContextView_Access;
   function view (This : in out PreviewGeneratorStoreFrontContextView) return Unbounded_String;

end views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package;


