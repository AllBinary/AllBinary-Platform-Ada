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
limited with views.business.context.RootContextView_Package;
package views.business.context.RootContextView_Package_References is
   type RootContextView_Access is access all views.business.context.RootContextView_Package.RootContextView'Class;
   type RootContextView_Access_Array is array (Natural range <>) of RootContextView_Access;
   type RootContextView_Access_Array_Access is access all RootContextView_Access_Array;
   type RootContextView_Access_Array_Access_Array is array (Natural range <>) of RootContextView_Access_Array_Access;
   type RootContextView_Access_Array_Access_Array_Access is access all RootContextView_Access_Array_Access_Array;
   type RootContextView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootContextView_Access_Array_Access;
   end record;
   function Java_Box (Value : RootContextView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootContextView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootContextView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootContextView_Access_Array_Access is (if Value /= null and then Value.all in RootContextView_Access_Array_Object'Class then RootContextView_Access_Array_Object'Class (Value.all).Value else null);
   type RootContextView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootContextView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RootContextView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootContextView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootContextView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootContextView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RootContextView_Access_Array_Access_Array_Object'Class then RootContextView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.business.context.RootContextView_Package_References;

with views.business.context.RootContextView_Package_References;
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
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.RootContextView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformTemplateInterface_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
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


   subtype RootContextView_Access is views.business.context.RootContextView_Package_References.RootContextView_Access;
   function "=" (Left, Right : RootContextView_Access) return Boolean renames views.business.context.RootContextView_Package_References."=";
   subtype RootContextView_Access_Array is views.business.context.RootContextView_Package_References.RootContextView_Access_Array;
   function "=" (Left, Right : RootContextView_Access_Array) return Boolean renames views.business.context.RootContextView_Package_References."=";
   subtype RootContextView_Access_Array_Access is views.business.context.RootContextView_Package_References.RootContextView_Access_Array_Access;
   function "=" (Left, Right : RootContextView_Access_Array_Access) return Boolean renames views.business.context.RootContextView_Package_References."=";
   function Java_Box (Value : RootContextView_Access_Array_Access) return Java_Object_Access renames views.business.context.RootContextView_Package_References.Java_Box;
   function Java_Unbox_RootContextView_Access_Array (Value : access Java_Object'Class) return RootContextView_Access_Array_Access renames views.business.context.RootContextView_Package_References.Java_Unbox_RootContextView_Access_Array;
   subtype RootContextView_Access_Array_Access_Array is views.business.context.RootContextView_Package_References.RootContextView_Access_Array_Access_Array;
   function "=" (Left, Right : RootContextView_Access_Array_Access_Array) return Boolean renames views.business.context.RootContextView_Package_References."=";
   subtype RootContextView_Access_Array_Access_Array_Access is views.business.context.RootContextView_Package_References.RootContextView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RootContextView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.RootContextView_Package_References."=";
   function Java_Box (Value : RootContextView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.business.context.RootContextView_Package_References.Java_Box;
   function Java_Unbox_RootContextView_Access_Array_Access_Array (Value : access Java_Object'Class) return RootContextView_Access_Array_Access_Array_Access renames views.business.context.RootContextView_Package_References.Java_Unbox_RootContextView_Access_Array_Access_Array;

   type RootContextView is new HttpStoreComponentView and TransformTemplateInterface with record
      RootContextView_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out RootContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootContextView_Access;
   function view (This : in out RootContextView) return Unbounded_String;
   function getName (This : in out RootContextView) return Unbounded_String;

end views.business.context.RootContextView_Package;


