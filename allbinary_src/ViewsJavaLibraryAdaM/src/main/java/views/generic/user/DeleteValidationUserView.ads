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

limited with views.generic_Id.user.DeleteValidationUserView_Package;
package views.generic_Id.user.DeleteValidationUserView_Package_References is
   type DeleteValidationUserView_Access is access all views.generic_Id.user.DeleteValidationUserView_Package.DeleteValidationUserView'Class;
   type DeleteValidationUserView_Access_Array is array (Natural range <>) of DeleteValidationUserView_Access;
   type DeleteValidationUserView_Access_Array_Access is access all DeleteValidationUserView_Access_Array;
   type DeleteValidationUserView_Access_Array_Access_Array is array (Natural range <>) of DeleteValidationUserView_Access_Array_Access;
   type DeleteValidationUserView_Access_Array_Access_Array_Access is access all DeleteValidationUserView_Access_Array_Access_Array;
end views.generic_Id.user.DeleteValidationUserView_Package_References;

with views.generic_Id.user.DeleteValidationUserView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.generic_Id.user.UserView_Package; use views.generic_Id.user.UserView_Package;

package views.generic_Id.user.DeleteValidationUserView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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


   subtype DeleteValidationUserView_Access is views.generic_Id.user.DeleteValidationUserView_Package_References.DeleteValidationUserView_Access;
   function "=" (Left, Right : DeleteValidationUserView_Access) return Boolean renames views.generic_Id.user.DeleteValidationUserView_Package_References."=";
   subtype DeleteValidationUserView_Access_Array is views.generic_Id.user.DeleteValidationUserView_Package_References.DeleteValidationUserView_Access_Array;
   function "=" (Left, Right : DeleteValidationUserView_Access_Array) return Boolean renames views.generic_Id.user.DeleteValidationUserView_Package_References."=";
   subtype DeleteValidationUserView_Access_Array_Access is views.generic_Id.user.DeleteValidationUserView_Package_References.DeleteValidationUserView_Access_Array_Access;
   function "=" (Left, Right : DeleteValidationUserView_Access_Array_Access) return Boolean renames views.generic_Id.user.DeleteValidationUserView_Package_References."=";
   subtype DeleteValidationUserView_Access_Array_Access_Array is views.generic_Id.user.DeleteValidationUserView_Package_References.DeleteValidationUserView_Access_Array_Access_Array;
   function "=" (Left, Right : DeleteValidationUserView_Access_Array_Access_Array) return Boolean renames views.generic_Id.user.DeleteValidationUserView_Package_References."=";
   subtype DeleteValidationUserView_Access_Array_Access_Array_Access is views.generic_Id.user.DeleteValidationUserView_Package_References.DeleteValidationUserView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DeleteValidationUserView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.user.DeleteValidationUserView_Package_References."=";

   type DeleteValidationUserView is new UserView and ValidationComponentInterface with record
      DeleteValidationUserView_Field_logUtil_Hidden : LogUtil_Access;
      userName : Unbounded_String;
   end record;

   procedure Initialize (This : in out DeleteValidationUserView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationUserView_Access;
   function isValid (This : in out DeleteValidationUserView) return Boolean;
   function validationInfo (This : in out DeleteValidationUserView) return Unbounded_String;
   function toValidationInfoDoc (This : in out DeleteValidationUserView) return Document_Access;
   function toValidationInfoNode (This : in out DeleteValidationUserView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out DeleteValidationUserView; document_Param : access Document_Package.Document'Class);
   function getTransformInfoInterface (This : in out DeleteValidationUserView) return TransformInfoInterface_Access;

end views.generic_Id.user.DeleteValidationUserView_Package;


