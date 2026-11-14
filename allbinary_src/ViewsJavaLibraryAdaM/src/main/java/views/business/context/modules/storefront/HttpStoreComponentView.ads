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
limited with views.business.context.modules.storefront.HttpStoreComponentView_Package;
package views.business.context.modules.storefront.HttpStoreComponentView_Package_References is
   type HttpStoreComponentView_Access is access all views.business.context.modules.storefront.HttpStoreComponentView_Package.HttpStoreComponentView'Class;
   type HttpStoreComponentView_Access_Array is array (Natural range <>) of HttpStoreComponentView_Access;
   type HttpStoreComponentView_Access_Array_Access is access all HttpStoreComponentView_Access_Array;
   type HttpStoreComponentView_Access_Array_Access_Array is array (Natural range <>) of HttpStoreComponentView_Access_Array_Access;
   type HttpStoreComponentView_Access_Array_Access_Array_Access is access all HttpStoreComponentView_Access_Array_Access_Array;
   type HttpStoreComponentView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HttpStoreComponentView_Access_Array_Access;
   end record;
   function Java_Box (Value : HttpStoreComponentView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HttpStoreComponentView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HttpStoreComponentView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HttpStoreComponentView_Access_Array_Access is (if Value /= null and then Value.all in HttpStoreComponentView_Access_Array_Object'Class then HttpStoreComponentView_Access_Array_Object'Class (Value.all).Value else null);
   type HttpStoreComponentView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HttpStoreComponentView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HttpStoreComponentView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HttpStoreComponentView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HttpStoreComponentView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HttpStoreComponentView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HttpStoreComponentView_Access_Array_Access_Array_Object'Class then HttpStoreComponentView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.business.context.modules.storefront.HttpStoreComponentView_Package_References;

with views.business.context.modules.storefront.HttpStoreComponentView_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with views.HttpComponentView_Package; use views.HttpComponentView_Package;

package views.business.context.modules.storefront.HttpStoreComponentView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package HttpComponentView_Package renames Standard.views.HttpComponentView_Package;
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


   subtype HttpStoreComponentView_Access is views.business.context.modules.storefront.HttpStoreComponentView_Package_References.HttpStoreComponentView_Access;
   function "=" (Left, Right : HttpStoreComponentView_Access) return Boolean renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References."=";
   subtype HttpStoreComponentView_Access_Array is views.business.context.modules.storefront.HttpStoreComponentView_Package_References.HttpStoreComponentView_Access_Array;
   function "=" (Left, Right : HttpStoreComponentView_Access_Array) return Boolean renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References."=";
   subtype HttpStoreComponentView_Access_Array_Access is views.business.context.modules.storefront.HttpStoreComponentView_Package_References.HttpStoreComponentView_Access_Array_Access;
   function "=" (Left, Right : HttpStoreComponentView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References."=";
   function Java_Box (Value : HttpStoreComponentView_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References.Java_Box;
   function Java_Unbox_HttpStoreComponentView_Access_Array (Value : access Java_Object'Class) return HttpStoreComponentView_Access_Array_Access renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References.Java_Unbox_HttpStoreComponentView_Access_Array;
   subtype HttpStoreComponentView_Access_Array_Access_Array is views.business.context.modules.storefront.HttpStoreComponentView_Package_References.HttpStoreComponentView_Access_Array_Access_Array;
   function "=" (Left, Right : HttpStoreComponentView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References."=";
   subtype HttpStoreComponentView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.HttpStoreComponentView_Package_References.HttpStoreComponentView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpStoreComponentView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References."=";
   function Java_Box (Value : HttpStoreComponentView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References.Java_Box;
   function Java_Unbox_HttpStoreComponentView_Access_Array_Access_Array (Value : access Java_Object'Class) return HttpStoreComponentView_Access_Array_Access_Array_Access renames views.business.context.modules.storefront.HttpStoreComponentView_Package_References.Java_Unbox_HttpStoreComponentView_Access_Array_Access_Array;

   type HttpStoreComponentView is new HttpComponentView with record
      HttpStoreComponentView_Field_logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out HttpStoreComponentView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return HttpStoreComponentView_Access;
   function view (This : in out HttpStoreComponentView) return Unbounded_String;

end views.business.context.modules.storefront.HttpStoreComponentView_Package;


