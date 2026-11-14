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
limited with views.generic_Id.user.UpdateValidationUserView_Package;
package views.generic_Id.user.UpdateValidationUserView_Package_References is
   type UpdateValidationUserView_Access is access all views.generic_Id.user.UpdateValidationUserView_Package.UpdateValidationUserView'Class;
   type UpdateValidationUserView_Access_Array is array (Natural range <>) of UpdateValidationUserView_Access;
   type UpdateValidationUserView_Access_Array_Access is access all UpdateValidationUserView_Access_Array;
   type UpdateValidationUserView_Access_Array_Access_Array is array (Natural range <>) of UpdateValidationUserView_Access_Array_Access;
   type UpdateValidationUserView_Access_Array_Access_Array_Access is access all UpdateValidationUserView_Access_Array_Access_Array;
   type UpdateValidationUserView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateValidationUserView_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateValidationUserView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateValidationUserView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateValidationUserView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateValidationUserView_Access_Array_Access is (if Value /= null and then Value.all in UpdateValidationUserView_Access_Array_Object'Class then UpdateValidationUserView_Access_Array_Object'Class (Value.all).Value else null);
   type UpdateValidationUserView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateValidationUserView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateValidationUserView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateValidationUserView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateValidationUserView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateValidationUserView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpdateValidationUserView_Access_Array_Access_Array_Object'Class then UpdateValidationUserView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.generic_Id.user.UpdateValidationUserView_Package_References;

with views.generic_Id.user.UpdateValidationUserView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.generic_Id.user.UpdateValidationUserView_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UpdateValidationUserView_Access is views.generic_Id.user.UpdateValidationUserView_Package_References.UpdateValidationUserView_Access;
   function "=" (Left, Right : UpdateValidationUserView_Access) return Boolean renames views.generic_Id.user.UpdateValidationUserView_Package_References."=";
   subtype UpdateValidationUserView_Access_Array is views.generic_Id.user.UpdateValidationUserView_Package_References.UpdateValidationUserView_Access_Array;
   function "=" (Left, Right : UpdateValidationUserView_Access_Array) return Boolean renames views.generic_Id.user.UpdateValidationUserView_Package_References."=";
   subtype UpdateValidationUserView_Access_Array_Access is views.generic_Id.user.UpdateValidationUserView_Package_References.UpdateValidationUserView_Access_Array_Access;
   function "=" (Left, Right : UpdateValidationUserView_Access_Array_Access) return Boolean renames views.generic_Id.user.UpdateValidationUserView_Package_References."=";
   function Java_Box (Value : UpdateValidationUserView_Access_Array_Access) return Java_Object_Access renames views.generic_Id.user.UpdateValidationUserView_Package_References.Java_Box;
   function Java_Unbox_UpdateValidationUserView_Access_Array (Value : access Java_Object'Class) return UpdateValidationUserView_Access_Array_Access renames views.generic_Id.user.UpdateValidationUserView_Package_References.Java_Unbox_UpdateValidationUserView_Access_Array;
   subtype UpdateValidationUserView_Access_Array_Access_Array is views.generic_Id.user.UpdateValidationUserView_Package_References.UpdateValidationUserView_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateValidationUserView_Access_Array_Access_Array) return Boolean renames views.generic_Id.user.UpdateValidationUserView_Package_References."=";
   subtype UpdateValidationUserView_Access_Array_Access_Array_Access is views.generic_Id.user.UpdateValidationUserView_Package_References.UpdateValidationUserView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateValidationUserView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.user.UpdateValidationUserView_Package_References."=";
   function Java_Box (Value : UpdateValidationUserView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.generic_Id.user.UpdateValidationUserView_Package_References.Java_Box;
   function Java_Unbox_UpdateValidationUserView_Access_Array_Access_Array (Value : access Java_Object'Class) return UpdateValidationUserView_Access_Array_Access_Array_Access renames views.generic_Id.user.UpdateValidationUserView_Package_References.Java_Unbox_UpdateValidationUserView_Access_Array_Access_Array;

   type UpdateValidationUserView is new HttpStoreComponentView and ValidationComponentInterface with record
      UpdateValidationUserView_Field_logUtil_Hidden : LogUtil_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out UpdateValidationUserView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UpdateValidationUserView_Access;
   function isValid (This : in out UpdateValidationUserView) return Boolean;
   function validationInfo (This : in out UpdateValidationUserView) return Unbounded_String;
   function toValidationInfoDoc (This : in out UpdateValidationUserView) return Document_Access;
   function toValidationInfoNode (This : in out UpdateValidationUserView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out UpdateValidationUserView; document_Param : access Document_Package.Document'Class);
   function view (This : in out UpdateValidationUserView) return Unbounded_String;
   function getTransformInfoInterface (This : in out UpdateValidationUserView) return TransformInfoInterface_Access;

end views.generic_Id.user.UpdateValidationUserView_Package;


