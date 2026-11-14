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
limited with views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package;
package views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References is
   type PageView_Access is access all views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package.PageView'Class;
   type PageView_Access_Array is array (Natural range <>) of PageView_Access;
   type PageView_Access_Array_Access is access all PageView_Access_Array;
   type PageView_Access_Array_Access_Array is array (Natural range <>) of PageView_Access_Array_Access;
   type PageView_Access_Array_Access_Array_Access is access all PageView_Access_Array_Access_Array;
   type PageView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageView_Access_Array_Access;
   end record;
   function Java_Box (Value : PageView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageView_Access_Array_Access is (if Value /= null and then Value.all in PageView_Access_Array_Object'Class then PageView_Access_Array_Object'Class (Value.all).Value else null);
   type PageView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PageView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PageView_Access_Array_Access_Array_Object'Class then PageView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References;

with views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References;
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
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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


   subtype PageView_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.PageView_Access;
   function "=" (Left, Right : PageView_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References."=";
   subtype PageView_Access_Array is views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.PageView_Access_Array;
   function "=" (Left, Right : PageView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References."=";
   subtype PageView_Access_Array_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.PageView_Access_Array_Access;
   function "=" (Left, Right : PageView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References."=";
   function Java_Box (Value : PageView_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.Java_Box;
   function Java_Unbox_PageView_Access_Array (Value : access Java_Object'Class) return PageView_Access_Array_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.Java_Unbox_PageView_Access_Array;
   subtype PageView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.PageView_Access_Array_Access_Array;
   function "=" (Left, Right : PageView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References."=";
   subtype PageView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.PageView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PageView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References."=";
   function Java_Box (Value : PageView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.Java_Box;
   function Java_Unbox_PageView_Access_Array_Access_Array (Value : access Java_Object'Class) return PageView_Access_Array_Access_Array_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package_References.Java_Unbox_PageView_Access_Array_Access_Array;

   type PageView is new HttpStoreComponentView with record
      PageView_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PageView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PageView_Access;
   function view (This : in out PageView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package;


