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
limited with views.admin.inventory.download.AddFileValidationView_Package;
package views.admin.inventory.download.AddFileValidationView_Package_References is
   type AddFileValidationView_Access is access all views.admin.inventory.download.AddFileValidationView_Package.AddFileValidationView'Class;
   type AddFileValidationView_Access_Array is array (Natural range <>) of AddFileValidationView_Access;
   type AddFileValidationView_Access_Array_Access is access all AddFileValidationView_Access_Array;
   type AddFileValidationView_Access_Array_Access_Array is array (Natural range <>) of AddFileValidationView_Access_Array_Access;
   type AddFileValidationView_Access_Array_Access_Array_Access is access all AddFileValidationView_Access_Array_Access_Array;
   type AddFileValidationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AddFileValidationView_Access_Array_Access;
   end record;
   function Java_Box (Value : AddFileValidationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AddFileValidationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AddFileValidationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AddFileValidationView_Access_Array_Access is (if Value /= null and then Value.all in AddFileValidationView_Access_Array_Object'Class then AddFileValidationView_Access_Array_Object'Class (Value.all).Value else null);
   type AddFileValidationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AddFileValidationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AddFileValidationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AddFileValidationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AddFileValidationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AddFileValidationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AddFileValidationView_Access_Array_Access_Array_Object'Class then AddFileValidationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.inventory.download.AddFileValidationView_Package_References;

with views.admin.inventory.download.AddFileValidationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.admin.inventory.download.DownloadableInventoryItemView_Package; use views.admin.inventory.download.DownloadableInventoryItemView_Package;

package views.admin.inventory.download.AddFileValidationView_Package is

   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
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


   subtype AddFileValidationView_Access is views.admin.inventory.download.AddFileValidationView_Package_References.AddFileValidationView_Access;
   function "=" (Left, Right : AddFileValidationView_Access) return Boolean renames views.admin.inventory.download.AddFileValidationView_Package_References."=";
   subtype AddFileValidationView_Access_Array is views.admin.inventory.download.AddFileValidationView_Package_References.AddFileValidationView_Access_Array;
   function "=" (Left, Right : AddFileValidationView_Access_Array) return Boolean renames views.admin.inventory.download.AddFileValidationView_Package_References."=";
   subtype AddFileValidationView_Access_Array_Access is views.admin.inventory.download.AddFileValidationView_Package_References.AddFileValidationView_Access_Array_Access;
   function "=" (Left, Right : AddFileValidationView_Access_Array_Access) return Boolean renames views.admin.inventory.download.AddFileValidationView_Package_References."=";
   function Java_Box (Value : AddFileValidationView_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.download.AddFileValidationView_Package_References.Java_Box;
   function Java_Unbox_AddFileValidationView_Access_Array (Value : access Java_Object'Class) return AddFileValidationView_Access_Array_Access renames views.admin.inventory.download.AddFileValidationView_Package_References.Java_Unbox_AddFileValidationView_Access_Array;
   subtype AddFileValidationView_Access_Array_Access_Array is views.admin.inventory.download.AddFileValidationView_Package_References.AddFileValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : AddFileValidationView_Access_Array_Access_Array) return Boolean renames views.admin.inventory.download.AddFileValidationView_Package_References."=";
   subtype AddFileValidationView_Access_Array_Access_Array_Access is views.admin.inventory.download.AddFileValidationView_Package_References.AddFileValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AddFileValidationView_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.download.AddFileValidationView_Package_References."=";
   function Java_Box (Value : AddFileValidationView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.download.AddFileValidationView_Package_References.Java_Box;
   function Java_Unbox_AddFileValidationView_Access_Array_Access_Array (Value : access Java_Object'Class) return AddFileValidationView_Access_Array_Access_Array_Access renames views.admin.inventory.download.AddFileValidationView_Package_References.Java_Unbox_AddFileValidationView_Access_Array_Access_Array;

   type AddFileValidationView is new DownloadableInventoryItemView and ValidationComponentInterface with record
      AddFileValidationView_Field_logUtil_Hidden : LogUtil_Access;
      AddFileValidationView_Field_basicItemData_Hidden : BasicItemData_Access;
   end record;
   ADDPRODUCT : Unbounded_String;
   ADDANOTHERDOWNLOADABLE : Unbounded_String;

   procedure Initialize (This : in out AddFileValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AddFileValidationView_Access;
   function isValid (This : in out AddFileValidationView) return Boolean;
   function toValidationInfoDoc (This : in out AddFileValidationView) return Document_Access;
   function toValidationInfoNode (This : in out AddFileValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out AddFileValidationView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out AddFileValidationView) return Unbounded_String;
   function isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) return Boolean;
   procedure isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer);
   procedure validationInfo (This : in out AddFileValidationView; stringBuffer_Param : access StringMaker_Package.StringMaker'Class; fileName : Unbounded_String; size : Long_Long_Integer);
   function getTransformInfoInterface (This : in out AddFileValidationView) return TransformInfoInterface_Access;

end views.admin.inventory.download.AddFileValidationView_Package;


